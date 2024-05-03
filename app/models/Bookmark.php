<?php

namespace app\models;

use PDO;

class Bookmark extends \app\core\Model
{
    //variables
    public $item_id;
    public $user_id;

    //insert into db
    function add($user_id, $item_id)
    {
        // Check if the item is already bookmarked
        $SQL = 'SELECT * FROM bookmarked_item WHERE item_id = :item_id AND user_id = :user_id';
        $STMT = self::$_conn->prepare($SQL);
        $STMT->execute([
            'item_id' => $item_id,
            'user_id' => $user_id,
        ]);
        $existingBookmark = $STMT->fetch(PDO::FETCH_ASSOC);

        // If the item is not already bookmarked, add it
        if (!$existingBookmark) {
            // SQL statement
            $SQL = 'INSERT INTO bookmarked_item (item_id, user_id) VALUES (:item_id, :user_id)';
            // Prepare statement
            $STMT = self::$_conn->prepare($SQL);
            // Execute statement
            $STMT->execute([
                'item_id' => $item_id,
                'user_id' => $user_id,
            ]);
        }
    }

    //getAll bookmark_item from a specific user
    function getAll($user)
    {
        //sql statement
        $SQL = 'SELECT * FROM bookmarked_item WHERE user_id = :user_id';
        //prepare statement
        $STMT = self::$_conn->prepare($SQL);
        //execute statement
        $STMT->execute([
            'user_id' => $user
        ]);
        //fetch class
        $favItems = $STMT->fetchAll(PDO::FETCH_ASSOC);
        //return what you fetched
        return $favItems;
    }

    function delete($item_id, $user_id) {
        // Statement
        $SQL = 'DELETE FROM bookmarked_item WHERE item_id = :item_id AND user_id = :user_id';
        // Prepare statement
        $STMT = self::$_conn->prepare($SQL);
        // Execute statement
        $STMT->execute([
            'item_id'=> $item_id,
            'user_id'=> $user_id,
        ]);
    }
}
