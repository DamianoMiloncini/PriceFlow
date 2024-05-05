<?php

namespace app\controllers;
use app\models\Item;


class Recipe extends \app\core\Controller
{

    #[\app\accessFilters\Login]
    public function create()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $recipe = new \app\models\Recipe();


            // Get form data
            $recipe->title = $_POST['title'];
            $recipe->content = $_POST['content'];
            $recipe->duration = $_POST['duration'];
            // Get the image file information
            $image = $_FILES['image'];
            // Get the privacy status
            $recipe->privacy_status = $_POST['privacy_status'];
    
            // Get the current image path from the database
            $currentImage = null;
    
            // Handle image upload
            $recipe->imagePath = $this->handleImageUpload($image, $currentImage);
    
            if (!$recipe->imagePath) {
                header('Location: /Recipe/create');
            }

            $recipe->total_price = 0;
    
            // Get user ID from session
            // $user_id = $_SESSION['user_id'];
            $recipe->user_id = $_SESSION['user_id'];
    
            // Create the recipe
            $success = $recipe->createRecipe();
    
            if ($success) {
                $recipe_id = $recipe->recipe_id;
                // Redirect to recipe listing
                header('Location: /Recipe/addItemToRecipe/' . $recipe_id);
                //header('Location: /home');
            } else {
                echo "There was an error creating the recipe. Please try again";
            }
        } else {
            $recipeModel = new \app\models\Recipe();
        $recipes = $recipeModel->getAllPublicRecipesWithImages();

        //Items
        $itemsModel = new \app\models\Item();
        $items = $itemsModel->loadAllItems();

        $data = [
            'recipes' => $recipes,
            'items' => $items,
        ];

            $this->view('Recipe/create', $data);
        }
    }

    public function addItemToRecipe($recipe_id){

        $recipe = new \app\models\Recipe();
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            $item_id = $_POST['item_id'];
            $recipe->insertItemInRecipe($recipe_id, $item_id); 
        }
        
        $recipe = $recipe->getRecipeByID($recipe_id);
        //Items
        $itemsModel = new \app\models\Item();
        $items = $itemsModel->loadAllItems();

        //Items in recipe
        $recipeModel = new \app\models\Recipe();
        $itemsInRecipe = $recipeModel->getItemsInRecipe($recipe_id);

        $data = [
            'recipes' => $recipe,
            'items' => $items,
            'itemsInRecipe' => $itemsInRecipe
        ];
    
        $this->view('Recipe/addItemToRecipe', $data);
    }

    function itemsInRecipeUpdate($recipe_id, $item_id, $method){

        if($method === 'minus'){
            $itemToBeUpdated = new \app\models\Recipe();
            $itemToBeUpdated->subtractItemQuantityInRecipe($recipe_id, $item_id);
        }
        if($method === 'add'){
            $itemToBeUpdated = new \app\models\Recipe();
            $itemToBeUpdated->addItemQuantityInRecipe($recipe_id, $item_id);
        }
        if($method === 'delete'){
            $itemToBeUpdated = new \app\models\Recipe();
            $itemToBeUpdated->removeFromRecipe($recipe_id, $item_id);
        }
        
        
        $recipeModel = new \app\models\Recipe();
        $itemsInRecipe = $recipeModel->getItemsInRecipe($recipe_id);

        $this->view('Recipe/itemsInRecipe', $itemsInRecipe);
    }


    #[\app\accessFilters\Login]
    public function items($searchTerm)
    {
        $recipe = new \app\models\Recipe();
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            $item_id = $_POST['item_id'];
            $recipe->insertItemInRecipe($recipe_id, $item_id); 
        }
        $_conn = \app\core\Model::getConnection();
        $itemObjects = Item::loadItems($searchTerm, $_conn);

        $data = [
            'items' => $itemObjects
        ];

        $this->view('Recipe/items', $data);

    }
    



    #[\app\accessFilters\Login]
    public function edit($recipe_id)
    {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();

        // Fetch the recipe details
        $recipe = $recipeModel->getRecipeByID($recipe_id);

        if ($recipe) {
            // Extract variables from the recipe
            $title = $recipe['title'];
            $content = $recipe['content'];
            $duration = $recipe['duration'];
            $privacy_status = $recipe['privacy_status'];

            // Include the edit recipe view
            $this->view('Recipe/edit', ['recipe' => $recipe, 'title' => $title, 'content' => $content, 'duration' => $duration, 'privacy_status' => $privacy_status]);
        } else {
            // Recipe not found
            echo "Recipe not found!";
        }
    }



    #[\app\accessFilters\Login]
    public function update($recipe_id)
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Get form data
            $title = $_POST['title'];
            $content = $_POST['content'];
            $duration = $_POST['duration'];
            $current_image = $_POST['current_image'];
            $new_image = $_FILES['image'];
            $privacy_status = $_POST['privacy_status'];

            // Check if a new image was uploaded
            if ($new_image['error'] === UPLOAD_ERR_OK) {
                // Handle image upload
                $imagePath = $this->handleImageUpload($new_image, $current_image);
                if (!$imagePath) {
                    echo "There was a problem uploading the image";
                    return;
                }
            } else {
                // No new image was uploaded
                $imagePath = $current_image;
            }

            // Instantiate Recipe model
            $recipe = new \app\models\Recipe();

            // Update the recipe
            $success = $recipe->updateRecipe($recipe_id, $title, $content, $duration, $imagePath, $privacy_status);

            if ($success) {
                // Check if privacy status has changed
                if ($privacy_status === 'private') {
                    // Redirect to private recipes page
                    header('Location: /Recipe/displayPrivate');
                } else {
                    // Redirect to all recipes page
                    header('Location: /Recipe/displayAll');
                }
            } else {
                echo "There was a problem updating the recipe";
            }
        } else {
            // Fetch recipe data from database
            $recipe = new \app\models\Recipe();
            $recipeData = $recipe->getRecipeByID($recipe_id);
            // Show update form with recipe data
            $this->view('Recipe/update', $recipeData);
        }
    }


    #[\app\accessFilters\Login]
    public function delete($recipe_id)
    {
        // Instantiate Recipe model
        $recipe = new \app\models\Recipe();

        // Check if the user is the creator of the recipe
        if (!$recipe->isRecipeCreatedByUser($recipe_id, $_SESSION['user_id'])) {
            header('Location: /Recipe/displayAll');
        }

        // Delete recipe from database
        $success = $recipe->deleteRecipe($recipe_id);

        if ($success) {
            // Redirect to recipe listing
            header('Location: /Recipe/displayAll');
        } else {
            echo "There was a problem deleting the recipe";
        }
    }

    function deleteConfirmation($recipe_id)
    {
        // Fetch recipe data from the database
        $recipeModel = new \app\models\Recipe();
        $recipeData = $recipeModel->getRecipeByID($recipe_id);

        // Display delete confirmation
        $this->view('Recipe/deleteConfirmation', ['recipe' => $recipeData]);
    }

    public function displayAll()
    {
        // Instantiate the Recipe model
        $recipeModel = new \app\models\Recipe();

        // Get all public recipes with images
        $recipes = $recipeModel->getAllPublicRecipesWithImages();

        // Load the view with public recipes and usernames
        $this->view('Recipe/displayAll', $recipes);
    }

    // Display private recipes (for authenticated users)
    #[\app\accessFilters\Login]
    public function displayPrivate()
    {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();
        // Fetch all private recipes with images for the logged-in user from the database
        $recipes = $recipeModel->getAllPrivateRecipesWithImages($_SESSION['user_id']);

        // Display private recipes with images
        $this->view('Recipe/displayPrivate', ['recipes' => $recipes]);
    }

    // Handle image upload
    private function handleImageUpload($image, $currentImage)
    {
        // Define the upload directory path
        $uploadDir = $_SERVER['DOCUMENT_ROOT'] . '/uploads';

        // Ensure that the uploads directory exists
        if (!file_exists($uploadDir) && !mkdir($uploadDir, 0777, true)) {
            return null;
        }

        // Check if the file was uploaded without errors
        if (!isset($image['error']) || $image['error'] !== UPLOAD_ERR_OK) {
            return null;
        }

        // Delete the old image file
        if ($currentImage && file_exists($currentImage)) {
            unlink($currentImage);
        }

        // Generate a unique name for the uploaded file to prevent overwriting
        $uniqueFilename = uniqid() . '_' . basename($image['name']);

        // Combine the upload directory and the unique filename to create the full path
        $filePath = $uploadDir . '/' . $uniqueFilename;

        // Move the uploaded file to the specified directory
        if (!move_uploaded_file($image['tmp_name'], $filePath)) {
            return null;
        }

        // Return the path to the uploaded file
        return $filePath;
    }



    // Display recipes created by the signed-in user
    #[\app\accessFilters\Login]
    function displayUserRecipes()
    {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();

        // Fetch all recipes created by the current user from the database
        $recipes = $recipeModel->getUserRecipes($_SESSION['user_id']);

        // Display user's recipes
        $this->view('Recipe/displayUserRecipes', ['recipes' => $recipes]);
    }

    // Display details of a specific recipe
    public function recipeDetails($recipe_id)
    {
        // Fetch recipe data from the database
        $recipeModel = new \app\models\Recipe();
        $recipeData = $recipeModel->getRecipeByID($recipe_id);

        $itemsInRecipe = $recipeModel->getItemsInRecipe($recipe_id);

        $data = [
            'recipeData' => $recipeData,
            'itemsInRecipe' => $itemsInRecipe
        ];

        // Display recipe details
        $this->view('Recipe/recipeDetails', $data);
    }

    public function search()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['query'])) {
            // Get the search query from the URL
            $searchQuery = $_GET['query'];

            // Check if the user is logged in
            if (isset($_SESSION['user_id'])) {
                // Check if the search is performed from the displayPrivate page
                if (strpos($_SERVER['HTTP_REFERER'], '/Recipe/displayPrivate') !== false) {
                    // Fetch only private recipes based on the search query and user ID
                    $recipeModel = new \app\models\Recipe();
                    $searchResults = $recipeModel->searchUserRecipes($_SESSION['user_id'], $searchQuery);
                } else {
                    // Fetch all recipes (public and private) based on the search query
                    $recipeModel = new \app\models\Recipe();
                    $searchResults = $recipeModel->searchAllRecipes($searchQuery);
                }
            } else {
                // Fetch only public recipes based on the search query
                $recipeModel = new \app\models\Recipe();
                $searchResults = $recipeModel->searchPublicRecipes($searchQuery);
            }

            // Display search results
            $this->view('Recipe/searchResults', ['recipes' => $searchResults]);
        } else {
            // Redirect to displayAll if no search query is provided
            header('Location: /Recipe/displayAll');
        }
    }

    public function filterByPrice()
    {
        // Get the sorting order from the form
        $sortOrder = $_GET['sort_order'];

        // Instantiate the Recipe model
        $recipeModel = new \app\models\Recipe();

        // Fetch recipes sorted by total price based on the selected order
        $recipes = $recipeModel->getRecipesSortedByPrice($sortOrder);

        // Load the view with the filtered recipes
        $this->view('Recipe/displayAll', $recipes);
    }

    public function filterByPriceRange()
    {
        // Get the minimum and maximum prices from the form
        $minPrice = $_GET['min_price'];
        $maxPrice = $_GET['max_price'];

        // Instantiate the Recipe model
        $recipeModel = new \app\models\Recipe();

        // Fetch recipes within the specified price range
        $recipes = $recipeModel->getRecipesInPriceRange($minPrice, $maxPrice);

        // Load the view with the filtered recipes
        $this->view('Recipe/displayAll', ['data' => $recipes]);
    }
}