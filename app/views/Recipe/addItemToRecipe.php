<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </style>
</head>
<body>
    <div id="wrapper">
            <div class="divider"></div>
            <div id="items">
                <?php foreach ($data['items'] as $item) : ?>
                    <script>                        
                        num++;
                    </script>
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading">
                                    <h5><?php echo $item['name']; ?></h5>
                                    <h6>By <?php echo $item['brand']; ?></h6>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                                <button type="submit" id="addButton">Add</button>
                            </div>
                        </div>
                <?php endforeach ?>
            </div>
    </div>
</body>
</html>

<details>