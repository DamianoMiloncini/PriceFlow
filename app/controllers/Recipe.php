<?php

namespace app\controllers;

class Recipe extends \app\core\Controller
{

    #[\app\accessFilters\Login]
    public function create()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Get form data
            $title = $_POST['title'];
            $content = $_POST['content'];
            $duration = $_POST['duration'];
            // Get the image file information
            $image = $_FILES['image'];
            // Get the privacy status
            $privacy_status = $_POST['privacy_status'];

            // Handle image upload
            $imagePath = $this->handleImageUpload($image);

            if (!$imagePath) {
                header('Location: /Recipe/create');
            }

            // Get user ID from session
            $user_id = $_SESSION['user_id'];

            // Instantiate Recipe model
            $recipe = new \app\models\Recipe();

            // Create the recipe
            $success = $recipe->createRecipe($user_id, $title, $content, $duration, $imagePath, $privacy_status);

            if ($success) {
                // Redirect to recipe listing
                header('Location: /Recipe/displayAll');
            } else {
                echo "There was en error creating the recipe. Please try again";
            }
        } else {
            $this->view('Recipe/create');
        }
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
                $imagePath = $this->handleImageUpload($new_image);
                if (!$imagePath) {
                    echo "There was a problem uploading the image";
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
    private function handleImageUpload($image)
    {
        // Define the upload directory path
        $uploadDir = $_SERVER['DOCUMENT_ROOT'] . '/uploads';

        // Ensure that the uploads directory exists
        if (!file_exists($uploadDir) && !mkdir($uploadDir, 0777, true)) {
            // Unable to create directory, handle the error as needed
            return null;
        }

        // Check if the file was uploaded without errors
        if (!isset($image['error']) || $image['error'] !== UPLOAD_ERR_OK) {
            // Handle the case where the file upload encountered an error
            return null;
        }

        // Generate a unique name for the uploaded file to prevent overwriting
        $uniqueFilename = uniqid() . '_' . basename($image['name']);

        // Combine the upload directory and the unique filename to create the full path
        $filePath = $uploadDir . '/' . $uniqueFilename;

        // Move the uploaded file to the specified directory
        if (!move_uploaded_file($image['tmp_name'], $filePath)) {
            // Handle the case where the file could not be moved
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

        // Display recipe details
        $this->view('Recipe/recipeDetails', ['recipe' => $recipeData]);
    }
}
