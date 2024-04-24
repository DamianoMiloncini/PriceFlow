<?php

namespace app\models;

use PDO;

class Recipe extends \app\core\Model {
// Function to create a new recipe
public function createRecipe($user_id, $title, $content, $duration, $imagePath, $privacy_status) {
    // Check if image path is provided
    if (!$imagePath) {
        return false;
    }

    // SQL statement for inserting recipe into the database
    $sql = 'INSERT INTO recipe (user_id, title, content, duration, image, date_created, privacy_status) VALUES (:user_id, :title, :content, :duration, :image, NOW(), :privacy_status)';

    // Prepare the SQL statement
    $stmt = self::$_conn->prepare($sql);

    // Bind parameters
    $stmt->bindParam(':user_id', $user_id);
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':content', $content);
    $stmt->bindParam(':duration', $duration);
    $stmt->bindParam(':image', $imagePath);
    $stmt->bindParam(':privacy_status', $privacy_status); // Bind privacy status parameter

    // Execute the statement
    $success = $stmt->execute();

    // Return the result of the execution
    return $success;
}
    

    // Function to update an existing recipe
    public function updateRecipe($recipe_id, $title, $content, $duration) {
        // SQL statement for updating recipe in the database
        $sql = 'UPDATE Recipe SET title = :title, content = :content, duration = :duration WHERE recipe_id = :recipe_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':duration', $duration);
        // Execute the statement
        $success = $stmt->execute();
        return $success;
    }

    // Function to delete a recipe from the database
    public function deleteRecipe($recipe_id) {
        // SQL statement for deleting recipe from the database
        $sql = 'DELETE FROM Recipe WHERE recipe_id = :recipe_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        // Execute the statement
        $success = $stmt->execute();
        return $success;
    }

    // Function to fetch all recipes from the database
public function getAllRecipes() {
    // Get the user ID from the session
    $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;

    if ($user_id) {
        // SQL statement for fetching public recipes created by the user
        $sql = 'SELECT r.*, u.username FROM Recipe r JOIN User u ON r.user_id = u.user_id WHERE r.privacy_status = "public" AND r.user_id = :user_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind user ID parameter
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    } else {
        // SQL statement for fetching all public recipes
        $sql = 'SELECT r.*, u.username FROM Recipe r JOIN User u ON r.user_id = u.user_id WHERE r.privacy_status = "public"';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
    }

    // Execute the statement
    $stmt->execute();
    // Fetch all recipes as associative array
    $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $recipes;
}
  

    // Function to fetch a recipe by its ID from the database
    public function getRecipeByID($recipe_id) {
        // SQL statement for fetching a recipe by its ID from the database
        $sql = 'SELECT * FROM recipe WHERE recipe_id = :recipe_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        // Execute the statement
        $stmt->execute();
        // Fetch the recipe
        $recipe = $stmt->fetch(PDO::FETCH_ASSOC);
        return $recipe;
    }

    public function getAllRecipesWithImages() {
        // SQL statement for fetching all recipes with image paths from the database
        $sql = 'SELECT *, CONCAT("uploads/", image) AS imagePath FROM recipe';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Execute the statement
        $stmt->execute();
        // Fetch all recipes with image paths as associative array
        $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $recipes;
    }

        // Function to fetch all public recipes with images from the database
    public function getAllPublicRecipesWithImages() {
        // SQL statement for fetching all public recipes with image paths from the database
        $sql = 'SELECT *, CONCAT("uploads/", image) AS imagePath FROM recipe WHERE privacy_status = "public"';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Execute the statement
        $stmt->execute();
        // Fetch all public recipes with image paths as associative array
        $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $recipes;
    }

public function getAllPrivateRecipesWithImages($user_id) {
    // SQL statement for fetching all private recipes with image paths for the specified user from the database
    $sql = 'SELECT *, CONCAT("uploads/", image) AS imagePath FROM recipe WHERE user_id = :user_id AND privacy_status = "private"';
    // Prepare the SQL statement
    $stmt = self::$_conn->prepare($sql);
    // Bind parameters
    $stmt->bindParam(':user_id', $user_id);
    // Execute the statement
    $stmt->execute();
    // Fetch all private recipes with image paths as associative array
    $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $recipes;
}

// Function to fetch all recipes created by a user
public function getUserRecipes($user_id) {
    // SQL statement for fetching all recipes created by the user
    $sql = 'SELECT * FROM recipe WHERE user_id = :user_id';
    
    // Prepare the SQL statement
    $stmt = self::$_conn->prepare($sql);
    
    // Bind parameters
    $stmt->bindParam(':user_id', $user_id);
    
    // Execute the statement
    $stmt->execute();
    
    // Fetch all recipes created by the user as associative array
    $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    return $recipes;
}

}
