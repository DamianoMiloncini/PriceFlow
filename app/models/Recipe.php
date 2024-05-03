<?php

namespace app\models;

use PDO;

class Recipe extends \app\core\Model
{
    // Function to create a new recipe
    public function createRecipe($user_id, $title, $content, $duration, $imagePath, $privacy_status)
    {
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
        $stmt->bindParam(':privacy_status', $privacy_status);

        // Execute the statement
        $success = $stmt->execute();

        // Return the result of the execution
        return $success;
    }


    // Function to update an existing recipe
    public function updateRecipe($recipe_id, $title, $content, $duration, $imagePath, $privacy_status)
    {
        // SQL statement for updating recipe in the database with image path and privacy status
        $sql = 'UPDATE recipe SET title = :title, content = :content, duration = :duration, image = :imagePath, privacy_status = :privacy_status WHERE recipe_id = :recipe_id';

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':duration', $duration);
        $stmt->bindParam(':imagePath', $imagePath);
        $stmt->bindParam(':privacy_status', $privacy_status);

        // Execute the statement
        $success = $stmt->execute();

        return $success;
    }

    public function getAllPublicRecipesWithImages()
    {

        $SQL = 'SELECT r.*, CONCAT("uploads/", image) AS imagePath, u.username
        FROM recipe r join user u
        ON r.user_id = u.user_id
        WHERE r.privacy_status = "public"';

        $STMT = self::$_conn->prepare($SQL);

        $STMT->execute();

        $recipes = $STMT->fetchAll(PDO::FETCH_ASSOC);

        return $recipes;
    }

    // Function to delete a recipe from the database
    public function deleteRecipe($recipe_id)
    {
        // SQL statement for deleting recipe from the database
        $sql = 'DELETE FROM recipe WHERE recipe_id = :recipe_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        // Execute the statement
        $success = $stmt->execute();
        return $success;
    }


    // Function to fetch a recipe by its ID from the database
    public function getRecipeByID($recipe_id)
    {
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

    // public function getAllRecipesWithImages()
    // {
    //     // SQL statement for fetching all recipes with image paths from the database
    //     $sql = 'SELECT *, CONCAT("uploads/", image) AS imagePath FROM recipe';
    //     // Prepare the SQL statement
    //     $stmt = self::$_conn->prepare($sql);
    //     // Execute the statement
    //     $stmt->execute();
    //     // Fetch all recipes with image paths as associative array
    //     $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
    //     return $recipes;
    // }

    // public function getAllPublicRecipesWithImages()
    // {
    //     // SQL statement for fetching all public recipes with image paths from the database
    //     $sql = 'SELECT *, CONCAT("uploads/", image) AS imagePath FROM recipe WHERE privacy_status = "public"';
    //     // Prepare the SQL statement
    //     $stmt = self::$_conn->prepare($sql);
    //     // Execute the statement
    //     $stmt->execute();
    //     // Fetch all public recipes with image paths as associative array
    //     $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
    //     return $recipes;
    // }

    public function getAllPrivateRecipesWithImages($user_id)
    {

        $SQL = 'SELECT r.*, CONCAT("uploads/", image) AS imagePath, u.username
        FROM recipe r join user u
        ON r.user_id = u.user_id
        WHERE r.privacy_status = "private"';

        $STMT = self::$_conn->prepare($SQL);

        $STMT->execute();

        $recipes = $STMT->fetchAll(PDO::FETCH_ASSOC);

        return $recipes;
    }

    // Function to fetch all recipes created by a user
    public function getUserRecipes($user_id)
    {
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

    public function getUsernameByUserId($user_id)
    {
        // SQL statement to fetch the username by user ID
        $sql = 'SELECT username FROM user WHERE user_id = :user_id';

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Bind the user ID parameter
        $stmt->bindParam(':user_id', $user_id);

        // Execute the statement
        $stmt->execute();

        // Fetch the result as an associative array
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        // Check if the result is not empty and contains the 'username' key
        if ($result && isset($result['username'])) {
            return $result['username'];
        } else {
            // Return null if the username is not found
            return null;
        }
    }

    // Function to check if a recipe is created by a specific user
    public function isRecipeCreatedByUser($recipe_id, $user_id)
    {
        // SQL statement to check if the recipe is created by the user
        $sql = 'SELECT COUNT(*) FROM recipe WHERE recipe_id = :recipe_id AND user_id = :user_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        $stmt->bindParam(':user_id', $user_id);
        // Execute the statement
        $stmt->execute();
        // Fetch the count
        $count = $stmt->fetchColumn();
        // If count > 0, recipe is created by the user; otherwise, it's not
        return $count > 0;
    }

    // Function to update an existing recipe with image
    public function updateRecipeWithImage($recipe_id, $title, $content, $duration, $imagePath)
    {
        // SQL statement for updating recipe in the database with image path
        $sql = 'UPDATE recipe SET title = :title, content = :content, duration = :duration, image = :imagePath WHERE recipe_id = :recipe_id';
        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);
        // Bind parameters
        $stmt->bindParam(':recipe_id', $recipe_id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':duration', $duration);
        $stmt->bindParam(':imagePath', $imagePath);
        // Execute the statement
        $success = $stmt->execute();
        return $success;
    }

    public function searchUserRecipes($user_id, $searchQuery)
    {
        // SQL statement to search user's recipes by title or content
        $sql = 'SELECT * FROM recipe WHERE user_id = :user_id AND (title LIKE :searchQuery OR content LIKE :searchQuery)';

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Bind parameters
        $searchParam = '%' . $searchQuery . '%';
        $stmt->bindParam(':user_id', $user_id);
        $stmt->bindParam(':searchQuery', $searchParam);

        // Execute the statement
        $stmt->execute();

        // Fetch search results
        $searchResults = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $searchResults;
    }

    public function searchAllRecipes($searchQuery)
    {
        // SQL statement to search all recipes by title or content
        $sql = 'SELECT * FROM recipe WHERE title LIKE :searchQuery OR content LIKE :searchQuery';

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Bind parameters
        $searchParam = '%' . $searchQuery . '%';
        $stmt->bindParam(':searchQuery', $searchParam);

        // Execute the statement
        $stmt->execute();

        // Fetch search results
        $searchResults = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $searchResults;
    }

    public function searchPublicRecipes($searchQuery)
    {
        // SQL statement to search public recipes by title or content
        $sql = 'SELECT * FROM recipe WHERE privacy_status = "public" AND (title LIKE :searchQuery OR content LIKE :searchQuery)';

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Bind parameters
        $searchParam = '%' . $searchQuery . '%';
        $stmt->bindParam(':searchQuery', $searchParam);

        // Execute the statement
        $stmt->execute();

        // Fetch search results
        $searchResults = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $searchResults;
    }

    public function getRecipesSortedByPrice($sortOrder)
    {
        // SQL statement to fetch recipes sorted by total price based on the selected order
        $sql = 'SELECT r.*, CONCAT("uploads/", r.image) AS imagePath, u.username
            FROM recipe r
            JOIN user u ON r.user_id = u.user_id
            WHERE r.privacy_status = "public"
            ORDER BY r.total_price ' . ($sortOrder === 'asc' ? 'ASC' : 'DESC');

        // Prepare the SQL statement
        $stmt = self::$_conn->prepare($sql);

        // Execute the statement
        $stmt->execute();

        // Fetch the recipes
        $recipes = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $recipes;
    }
}
