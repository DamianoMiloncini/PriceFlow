<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        #itemBoxWrapper{
            padding: 10px;
            margin: 5px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            width: 50%;
        }

        #search{
            resize: none;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            line-height: 30px;
            height: 40px;
            padding-left: 20px;
            width: 75%;
        }

        #items {
            margin: 20px;
            margin: 20px;
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            /* This is for the grid layout so that the recipes load in a 3 column per row layout  */
            gap: 20px;
        }

        .item {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        #itemImage {
            width: 100%;
            height: 100px;
            object-fit: cover;
            opacity: 0.9;
            /* -webkit-mask-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 1)), to(rgba(0, 0, 0, 0)));
            mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0)); */
        }


        #itemInformation {
            padding: 20px;
        }

        #itemHeading {
            font-family: "acumin-pro-wide", "Acumin Pro Wide", "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-top: 20px;
            padding-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }

        #addButton{
            display: inline-block;
            padding: 5px 20px;
            background-color: #eff7ff;
            font-size: 15px;
            font-weight: 600;
            color: #006eff;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            margin-right: 8px;
            margin-left: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease; 
        }

        #addButton:hover { 
            background-color: #d4e7ff; 
            cursor: pointer;
        }
        #addingHeading{
            font-family: "acumin-pro-wide", "Acumin Pro Wide", "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-top: 20px;
            padding-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }
</style>
</head>

<body>
    <div id="wrapper">
        <?php //var_dump($data); ?>
        <h5 id="addingHeading">Add item to recipe <?php echo $data['recipes']['title'] ?></h5>
        <a href="/home"></a>
            <textarea id="search" name="searchBar" placeholder='Search'></textarea></textarea>
            <button onclick="fetchData()">Search</button>    

            <div id="items">
                <?php foreach ($data['items'] as $item) : ?>
                    <script>                        
                        num++;
                    </script>
                    <form action='' method="POST">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading">
                                    <h5><?php echo $item['name']; ?></h5>
                                    <h6>By <?php echo $item['brand']; ?></h6>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                                <input type="hidden" name="item_id" value ="<?php echo $item['item_id'] ?>">
                                <button type="submit" id="addButton">Add</button>
                            </div>
                        </div>
                    </form>
                <?php endforeach ?>
            </div>
                
    </div>

</body>

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

    function addItemToRecipe(){
        var inputText = document.getElementById("search").value;
        if (inputText == '') return;
        var url = "/Recipe/insertTest/" + inputText;
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

</html>