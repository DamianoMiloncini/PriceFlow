<?php

namespace app\controllers;

class Recipe extends \app\core\Controller {

    // Ensure user is logged in
    // Ensure user is logged in
    #[\app\accessFilters\Login]

    public function create() {
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
                // Handle error if image upload fails
                // You can redirect back to the create form with an error message
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
                exit; // Stop further execution
            } else {
                // Handle error if recipe creation fails
            }
        } else {
            // Show create recipe form
            $this->view('Recipe/create');
        }
    }    

    // Ensure user is logged in and owns the recipe
    #[\app\accessFilters\Login]
    function update($recipe_id) {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Get form data
            $title = $_POST['title'];
            $content = $_POST['content'];
            $duration = $_POST['duration'];
            
            // Instantiate Recipe model
            $recipe = new \app\models\Recipe();
            
            // Update the recipe
            $success = $recipe->updateRecipe($recipe_id, $title, $content, $duration);
            
            if ($success) {
                // Redirect to recipe details
                header('Location: /Recipe/view/' . $recipe_id);
            } else {
                // Handle error, perhaps show an error message
            }
        } else {
            // Fetch recipe data from database
            $recipe = new \app\models\Recipe();
            $recipeData = $recipe->getRecipeByID($recipe_id);
            // Show update form with recipe data
            $this->view('Recipe/update', $recipeData);
        }
    }

    // Ensure user is logged in and owns the recipe
    #[\app\accessFilters\Login]
    function delete($recipe_id) {
        // Instantiate Recipe model
        $recipe = new \app\models\Recipe();
        
        // Delete recipe from database
        $success = $recipe->deleteRecipe($recipe_id);
        
        if ($success) {
            // Redirect to recipe listing
            header('Location: /Recipe/displayAll');
        } else {
            // Handle error, perhaps show an error message
        }
    }

    function displayAll() {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();
        // Fetch all public recipes with images from the database
        $recipes = $recipeModel->getAllPublicRecipesWithImages();
        
        // Render the view to display all recipes with images
        $this->view('Recipe/displayAll', ['recipes' => $recipes]);
    }
    
    // Display private recipes (for authenticated users)
    #[\app\accessFilters\Login]
    function displayPrivate() {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();
        // Fetch all private recipes with images for the logged-in user from the database
        $recipes = $recipeModel->getAllPrivateRecipesWithImages($_SESSION['user_id']);
        
        // Render the view to display private recipes with images
        $this->view('Recipe/displayPrivate', ['recipes' => $recipes]);
    }

    // Handle image upload
// Handle image upload
private function handleImageUpload($image) {
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
function displayUserRecipes() {
    // Check if the user is logged in
    if (isset($_SESSION['user_id'])) {
        // Instantiate Recipe model
        $recipeModel = new \app\models\Recipe();
        
        // Fetch all recipes created by the current user from the database
        $recipes = $recipeModel->getUserRecipes($_SESSION['user_id']);
        
        // Render the view to display user's recipes
        $this->view('Recipe/displayUserRecipes', ['recipes' => $recipes]);
    } else {
        // If user is not logged in, redirect them to the login page
        header('Location: /User/login');
    }
}

// Display details of a specific recipe
function recipeDetails($recipe_id) {
    // Fetch recipe data from the database
    $recipeModel = new \app\models\Recipe();
    $recipeData = $recipeModel->getRecipeByID($recipe_id);
    
    // Render the view to display recipe details
    $this->view('Recipe/recipeDetails', ['recipe' => $recipeData]);
}
}
