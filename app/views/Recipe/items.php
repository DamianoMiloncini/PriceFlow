<?php foreach ($items as $item) : ?>
       <form action='' method="POST">
        <div class="item">
            <img id="itemImage" src="<?php echo $item->image; ?>">
            <div id="itemInformation">
                <div class="itemHeading">
                    <h5><?php echo $item->name; ?></h5>
                    <h6>By <?php echo $item->brand; ?></h6>
                </div>
                <h7>$<?php echo $item->price; ?></h7>
                <input type="hidden" name="item_id" value="<?php echo $item->item_id ?>">
                <br>
                <button type="submit" id="addButton">Add</button>
            </div>
        </div>
    </form>
<?php endforeach ?>
