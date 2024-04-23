<html>

    <head>
        <title>User Bookmark</title>
        <style> 
        .itemImages {
    width: 5%;
    height: auto;
    margin-left: 1%;
    margin-right: 2%;
}

        </style>
    </head>

    <body>
    <div>
        <?php
        //for each item, display it in a list
        foreach($data as $item) {
            echo <<<HTML
                <img class="itemImages" src = "{$item['image']}">
                <h5>{$item['name']}</h5>
                <h6 style="margin-left:2%;">{$item['brand']}</h6>
                 <h6 style="margin-left:2%;">Price: {$item['price']} </h6>
            HTML;
        }
        ?>
    </div>



    </body>


</html>