<?php foreach ($data as $item) : ?>
    <div class="itemCard">

        <img class="itemImages" src=<?php echo $item['image'] ?>>


        <!-- <div id ="itemInformation"> -->
        <h5><?php echo $item['name'] ?></h5>
        <h6 style="margin-left:2%;"><?php echo $item['brand'] ?></h6>
        <h6 id="quantity" style="margin-left:2%;"><?php echo $item['quantity'] ?></h6>
        <h6 style="margin-left:2%;">Price: $<?php echo $item['price'] ?></h6>
        <h6 id="quantity_purchased" style="margin-left:2%;">In cart: <?php echo $item['quantity_purchased'] ?></h6>
        <!-- </div> -->
        <h5 style="margin-left:2%;">
            <?php

            $totalItemPrice = $item['price'] * $item['quantity_purchased'];
            echo ("Total: $" . $totalItemPrice);

            ?>

        </h5>

        <input id="itemId" type="hidden" name="item_id" value="<?php echo $item['item_id']; ?>">
        <input id="cartId" type="hidden" name="cart_id" value="<?php echo $item['cart_id']; ?>">
        <div id="cartButtons">
            <button type="submit" id="minusBtn" name="minus1" class="bttns" onClick="minus1('<?php echo $item['item_id']; ?>'); updateCheckout();">-</button>
            <button type="submit" id="addBtn" name="add1" class="bttns" onClick="add1('<?php echo $item['item_id']; ?>'); updateCheckout();">+</button>
            <button type="submit" class="bttns" name="deleteButton" onClick="deleteItem('<?php echo $item['item_id']; ?>');"><i class="bi bi-trash3"></i></button>
        </div>
    </div>
<?php endforeach ?>

<script>
    function minus1(item_id) {
        var cart_id = document.getElementById("cartId").value
        var url = "/Cart/items/" + cart_id;

        // Make the fetch request
        fetch(url)
            .then(response => {
                // Check if the response is successful
                if (response.ok) {
                    return response.text();
                } else {
                    throw new Error('Network response was not ok');
                }
            })
            .then(data => {
                // Replace the content of the lorem-ipsum div with the response text
                document.getElementById("cartItems").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }
</script>