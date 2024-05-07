<html>

    <head>
        <title>User Bookmark</title>
        <style> 
        #errorBtn {
            text-align: center;
            display: block;
        }
        .itemImages {
            width: 150px;
            height: auto;
            margin-right: 20px;
        }

        .itemInfo {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .itemInfo h5,
        .itemInfo h6 {
            margin: 5px 0;
        }
        .container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            padding-left: 5%;
            padding-right: 5%;
            padding-top: 5%;
        }

        </style>
    </head>

    <body>
    <div>
        <?php
        //for each item, display it in a list
        if($data != null) {
            foreach($data as $item) {
                echo <<<HTML
                <div class='container'>
                    <img class="itemImages" src = "{$item['image']}">
                    <div class="itemInfo">
                    <h5>{$item['name']}</h5>
                    <h6 style="margin-left:2%;">{$item['brand']}</h6>
                     <h6 style="margin-left:2%;">Price: {$item['price']} </h6>
                     <form action="/bookmark/delete/{$item['item_id']}" method="post">
                        <button type="submit" class = "userBtn" name="delete_item">Delete</button>
                    </form>
                    </div>
                     </div>
                HTML;
            }
        }
        else {
            echo '<label id="errorBtn">No favorites saved</label>';
        }

        ?>
    </div>



    </body>


</html>