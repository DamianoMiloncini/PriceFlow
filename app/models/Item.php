<?php

namespace app\models;

use PDO;

// CRUD implementation
class Item extends \app\core\Model
{
    // Variables
    public $item_id;
    public $name;
    public $price;
    public $image;
    public $quantity;
    public $brand;
    public $store;
    public $description;
    public $link; // New property for the link attribute

    public function __construct($object = null)
    {
        parent::__construct();
        if ($object != null) {
            if (is_object($object)) {
                $this->item_id = $object->item_id;
                $this->name = $object->name;
                $this->price = $object->price;
                $this->image = $object->image;
                $this->quantity = $object->quantity;
                $this->brand = $object->brand;
                $this->store = preg_replace('/[^a-zA-Z]/', '', $object->item_id); // Extract only letters
                $this->description = $object->description;
                $this->link = $object->link; // Assigning the link property
            } elseif (is_array($object)) {
                $this->item_id = $object['item_id'] ?? null;
                $this->name = $object['name'] ?? null;
                $this->price = $object['price'] ?? null;
                $this->image = $object['image'] ?? null;
                $this->quantity = $object['quantity'] ?? null;
                $this->brand = $object['brand'] ?? null;
                $this->store = preg_replace('/[^a-zA-Z]/', '', $object['item_id'] ?? null); // Extract only letters
                $this->description = $object['description'] ?? null;
                $this->link = $object['link'] ?? null; // Assigning the link property
            }
        }
    }

    function getById($item_id)
    {
        // SQL statement
        $SQL = 'SELECT * FROM item WHERE item_id = :item_id';
        // Prepare statement
        $STMT = self::$_conn->prepare($SQL);
        // Execute statement
        $STMT->execute([
            'item_id' => $item_id,
        ]);
        // Fetch class statement
        $item = $STMT->fetch(PDO::FETCH_ASSOC);
        // Return the fetched item
        return $item;
    }

    public function saveItem($query)
    {
        // SQL statement
        $SQL = 'INSERT INTO item (item_id, name, price, image, quantity, brand, link, description) VALUES (:item_id, :name, :price, :image, :quantity, :brand, :link, :description)';

        // Prepare the statement
        $STMT = self::$_conn->prepare($SQL); // Use the instance property to access the connection

        // Execute the statement
        $STMT->execute([
            'item_id' => $this->item_id,
            'name' => $this->name,
            'price' => str_replace('$', '', $this->price),
            'image' => $this->image,
            'quantity' => $this->quantity,
            'brand' => $this->brand,
            'link' => $this->link,
            'description' => $this->description
        ]);

        $this->saveItemQueryCombination($query);
    }

    public function doesItemQueryCombinationExist($query)
    {
        // SQL statement
        $SQL = 'SELECT * FROM item_from_search_query WHERE item_id = :item_id AND query = :query'; // Corrected the column name
        // Prepare the statement
        $STMT = self::$_conn->prepare($SQL); // Use the instance property to access the connection
        // Execute the statement
        $STMT->execute([
            'item_id' => $this->item_id,
            'query' => $query
        ]);
        // Check if any rows were returned
        $result = $STMT->fetch(PDO::FETCH_ASSOC);
        // Return true if rows were returned, false otherwise
        return $result ? true : false;
    }

    function saveItemQueryCombination($query) {

        $SQL = 'INSERT INTO item_from_search_query (item_id, query) VALUES (:item_id, :query)';

        // Prepare the statement
        $STMT = self::$_conn->prepare($SQL); // Use the instance property to access the connection

        // Execute the statement
        $STMT->execute([
            'item_id' => $this->item_id,
            'query' => $query,
        ]);
    }

    public function doesItemExist()
    {
        // SQL statement
        $SQL = 'SELECT * FROM item WHERE item_id = :item_id'; // Corrected the column name
        // Prepare the statement
        $STMT = self::$_conn->prepare($SQL); // Use the passed connection parameter
        // Execute the statement
        $STMT->execute([
            'item_id' => $this->item_id
        ]);
        // Check if any rows were returned
        $result = $STMT->fetch(PDO::FETCH_ASSOC);
        // Return true if rows were returned, false otherwise
        return $result ? true : false;
    }

    public static function doesQueryExist($query, $_conn)
    {
        // Check if the query exists in the search_query table
        $queryExistsSQL = 'SELECT * FROM search_query WHERE query = :query';
        $queryExistsStmt = $_conn->prepare($queryExistsSQL);
        $queryExistsStmt->execute(['query' => $query]);
        $queryExistsResult = $queryExistsStmt->fetch(PDO::FETCH_ASSOC);
    
        // If query exists in search_query table
        if ($queryExistsResult) {
            // Check if it has associated items in item_from_search_query table
            $associatedItemsSQL = 'SELECT * FROM item_from_search_query WHERE query = :query';
            $associatedItemsStmt = $_conn->prepare($associatedItemsSQL);
            $associatedItemsStmt->execute(['query' => $queryExistsResult['query']]);
            $associatedItemsResult = $associatedItemsStmt->fetch(PDO::FETCH_ASSOC);
    
            // If no associated items found
            if (!$associatedItemsResult) {
                // Delete the query from search_query table
                $deleteQuerySQL = 'DELETE FROM search_query WHERE query = :query';
                $deleteQueryStmt = $_conn->prepare($deleteQuerySQL);
                $deleteQueryStmt->execute(['query' => $queryExistsResult['query']]);
                // Return false
                return false;
            }
        }
    
        // If query doesn't exist or has associated items, return true
        return $queryExistsResult ? true : false;
    }
    

    //old code

    // public static function doesQueryExist($query, $_conn)
    // {
    //     // SQL statement
    //     $SQL = 'SELECT * FROM search_query WHERE query = :query'; // Corrected the column name
    //     // Prepare the statement
    //     $STMT = $_conn->prepare($SQL); // Use the passed connection parameter
    //     // Execute the statement
    //     $STMT->execute([
    //         'query' => $query
    //     ]);
    //     // Check if any rows were returned
    //     $result = $STMT->fetch(PDO::FETCH_ASSOC);
    //     // Return true if rows were returned, false otherwise
    //     return $result ? true : false;
    // }

    public static function saveQuery($query, $_conn)
    {
        //SQL statement
        $SQL = 'INSERT INTO search_query (query) VALUES (:query)'; // Corrected the column name
        //prepare the statement
        $STMT = $_conn->prepare($SQL); // Use the passed connection parameter
        //execute the statement
        $STMT->execute(
            [
                'query' => $query
            ]
        );
    }

    public static function loadItems($query, $_conn)
    {
        // SQL statement to fetch items based on the provided query
        $SQL = '
        SELECT item.*
        FROM item
        JOIN item_from_search_query ON item.item_id = item_from_search_query.item_id
        JOIN search_query ON item_from_search_query.query = search_query.query
        WHERE search_query.query = :query';

        // Prepare the statement
        $statement = $_conn->prepare($SQL); // Use the passed connection parameter

        // Bind the query parameter
        $statement->bindParam(':query', $query, PDO::PARAM_STR);

        // Execute the statement
        $statement->execute();

        // Fetch all rows as associative arrays
        $results = $statement->fetchAll(PDO::FETCH_ASSOC);

        // Initialize an array to store Item objects
        $items = [];

        // Create an Item object for each result and add it to the $items array
        foreach ($results as $result) {
            $item = new Item($result);
            $items[] = $item;
        }

        // Return the array of Item objects
        return $items;
    }

    public function loadAllItems() {
        // SQL statement to fetch items based on the provided query
        $SQL = 'SELECT * FROM item';

        $statement = self::$_conn->prepare($SQL);

        $statement->execute();

        // Fetch all rows as associative arrays
        $results = $statement->fetchAll(PDO::FETCH_ASSOC);

        // Return the array of Item objects
        return $results;
    }
    
}
