<html>
    <head>
        <title>Search Results</title>
    </head>
    <body>
        <div>
            <table>
            <h3>Search Results</h3> <!--could modifiy the array of data to add the search query  -->
                <?php
                echo "<ol>";
                foreach($data as $place) {
                    //a safe of sending data through the URL (a life saver frl frl)
                    $storeParam = urlencode(json_encode($place));
                    //make this clickable and sent data about a specific store to the store details view
                    echo <<<HTML
                    <li><a href = "/storeDetails?store=$storeParam">{$place['displayName']['text']}, {$place['formattedAddress']}  </a></li>
                    <br>
                HTML;
                }
                echo "</ol>";

                 ?>
            </table>
        </div>
    </body>
</html>