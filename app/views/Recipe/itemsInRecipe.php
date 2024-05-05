<?php

foreach ($data as $item) { ?>

    <div class="itemCard">

        <img class="itemImages" src=<?php echo $item['image'] ?>>


        <!-- <div id ="itemInformation"> -->
        <h5><?php echo $item['name'] ?></h5>
        <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
        <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
        <h6 style="margin-left:2%;">Price: $<?php echo $item['price'] ?></h6>
        <h6 id="quantity_purchased" style="margin-left:2%;">Quantity needed: <?php echo $item['quantity_needed'] ?></h6>
        <input id="itemId" type="hidden" name="item_id" value="<?php echo $item['item_id']; ?>">
        <input id="recipeId" type="hidden" name="cart_id" value="<?php echo $item['recipe_id']; ?>">
        <div id="cartButtons">
            <button type="submit" id="minusBtn" name="minus1" class="bttns" onClick="minus1('<?php echo $item['item_id']; ?>');">-</button>
            <button type="submit" id="addBtn" name="add1" class="bttns" onClick="add1('<?php echo $item['item_id']; ?>');">+</button>
            <button type="submit" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button>
        </div>
        <!-- </div> -->
        <h5 style="margin-left:2%;">
        </h5>
    </div>

<?php } ?>