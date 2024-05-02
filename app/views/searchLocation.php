<html>
    <head>
        <title>Search Results</title>
    </head>
    <body>
        <div>
            <table>
            <h3>Search Results</h3> <!--could modifiy the array of data to add the search query  -->
                <?php
                var_dump($data);
                echo "<ol>";
                foreach($data as $place) {
                    //make this clickable and sent data about a specific store to the store details view
                    echo <<<HTML
                    <li><a href = "/searchDetails">{$place['displayName']['text']}, {$place['formattedAddress']}   </a></li>
                    <br>
                HTML;
                }
                echo "</ol>";

                 ?>
            </table>
        </div>
    </body>
</html>