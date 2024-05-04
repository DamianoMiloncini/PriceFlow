<?php foreach ($items as $item) : ?>
    <script>
        num++;
    </script>
    <iframe name="formFrame" id="formFrame" style="display: none;"></iframe>
    <form action='' method="POST" target="formFrame">
        <div class="item">
            <img id="itemImage" src="<?php echo $item->image; ?>">
            <div id="itemInformation">
                <div class="itemHeading">
                    <h5><?php echo $item->name; ?></h5>
                    <h6>By <?php echo $item->brand; ?></h6>
                </div>
                <h7>$<?php echo $item->price; ?></h7>
                <input type="hidden" name="item_id" value="<?php echo $item->item_id ?>">
                <button type="submit" id="addButton">Add</button>
            </div>
        </div>
    </form>
<?php endforeach ?>

<script>
    function fetchData() {
        var inputText = document.getElementById("search").value;
        if (inputText == '') return;
        var url = "/Recipe/items/" + inputText;
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
                document.getElementById("items").innerHTML = data;
            })
            .catch(error => {
                console.error('There was a problem with the fetch request:', error);
            });
    }
</script>