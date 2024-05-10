<?php
$user = new \app\models\User();
//get user's information
$user = $user->getByID($_SESSION['user_id']);
if ($user) { ?>
    <html>

    <head>

        <title>Home</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="app\views\Styles\homeStyle.css">
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

    </head>

    <body>
        <?php include 'app/views/topBar.php'; ?>

        <div id="container">

            <?php
            //get user's information
            $user = $user->getByID($_SESSION['user_id']);
            ?>
            <div id="loggedInTopLayer">
                <div id="loggedInMiddleHeading">

                    <h4 class='loggedInLeading'>
                        Welcome,
                        <span style="color: #006eff;"><?php echo $user->username ?></span>

                    </h4>

                    <!-- <div class='buttonArea'>
                            </div> -->
                </div>
            </div>


        </div>
        <br>

        <div class="content">

            <?php //include 'app/views/Item/searchBar.php'; ?>

            <div class="divider"></div>

            <div id="searchInfoBar">
                <div id="textInformation">
                    <h1 id="contentHeading"></h1>
                    <h1 id="resultsNumber"></h1>
                </div>
                <div id="searchButtons">

                    <div id="filterButton">
                        <select id="filterOptions" name="filterOptions">
                            <option value="" disabled selected><i class="bi bi-funnel"></i>Filter</option>
                            <option value="itemFilter">Item</option>
                            <option value="recipeFilter">Recipe</option>
                        </select>
                    </div>

                    <div id="sortButton">
                        <select id="sortOptions" name="sortOptions">
                            <option value="" disabled selected><i class="bi bi-funnel"></i>Sort</option>
                            <option value="dateCreated">Date created</option>
                            <option value="option2">Lowest to Highest</option>
                            <option value="option3">Highest to Lowest</option>
                        </select>
                    </div>

                </div>

            </div>


            <script>
                var num = 0;
            </script>

            <div id="recipes" style="display: <?php echo isset($_SESSION['user_id']) ? 'none' : 'grid'; ?>">
                <?php foreach ($data['recipes'] as $recipe) : ?>
                    <script>
                        num++;
                    </script>
                    <a style="text-decoration:none; color:black;" href='Recipe/recipeDetails/<?php echo $recipe['recipe_id'] ?>'>
                        <div class="recipe">
                            <img id="recipeImage" src="/uploads/<?php echo basename($recipe['imagePath']); ?>">
                            <div id="recipeInformation">
                                <div class="recipeHeading">
                                    <h5><?php echo $recipe['title']; ?></h5>
                                    <h6>By <?php echo $recipe['username']; ?></h6>
                                </div>
                                <h7><?php echo $recipe['date_created'] ?></h7>
                            </div>
                        </div>
                    </a>
                <?php endforeach ?>
            </div>


            <div id="items" style="display: <?php echo !isset($_SESSION['user_id']) ? 'none' : 'grid'; ?>">
                <?php foreach ($data['items'] as $item) : ?>
                    <script>
                        num++;
                    </script>
                    <a style="text-decoration:none; color:black;" href="/Item/info/<?php echo $item['item_id']; ?>">
                        <div class="item">
                            <img id="itemImage" src="<?php echo $item['image']; ?>">
                            <div id="itemInformation">
                                <div class="itemHeading" style="margin-bottom: 25px;">
                                    <h6 style="font-size:15px; font-weight:400"><?php echo $item['brand']; ?></h6><br>
                                    <h5 style="font-size:18px;"><?php echo $item['name']; ?></h5><br>
                                    <h6 style="font-size:15px; font-weight:400;"><?php echo $item['quantity']; ?></h6><br>
                                </div>
                                <h7>$<?php echo $item['price'] ?></h7>
                            </div>
                        </div>
                    </a>
                <?php endforeach ?>
            </div>

            <script>
                document.getElementById("sortOptions").addEventListener("change", function() {
                    var sortBy = this.value;
                    if (sortBy === "dateCreated") {
                        sortRecipesByDateCreated();
                    }
                });

                function sortRecipesByDateCreated() {
                    var recipesContainer = document.getElementById("recipes");
                    var recipes = Array.from(recipesContainer.children);

                    recipes.sort(function(a, b) {
                        var dateA = new Date(a.querySelector("h7").textContent);
                        var dateB = new Date(b.querySelector("h7").textContent);
                        return dateB - dateA;
                    });

                    recipes.forEach(function(recipe) {
                        recipesContainer.appendChild(recipe);
                    });
                }
            </script>

            <script>
                document.addEventListener("DOMContentLoaded", function() {
                    document.getElementById("items").style.display = "grid"; // Show items
                    document.getElementById("contentHeading").textContent = "Items"; // Update heading
                });
                document.getElementById("filterOptions").addEventListener("change", function() {
                    var selectedFilter = this.value;
                    if (selectedFilter === "itemFilter") {
                        document.getElementById("items").style.display = "grid";
                        document.getElementById("recipes").style.display = "none";
                        document.getElementById("contentHeading").textContent = "Items";
                        var output = num + " Results found";
                        document.getElementById("resultsNumber").textContent = output;
                    } else if (selectedFilter === "recipeFilter") {
                        document.getElementById("items").style.display = "none";
                        document.getElementById("recipes").style.display = "grid";
                        document.getElementById("contentHeading").textContent = "Recipes";
                    }
                });
            </script>

        </div>

    </body>

    </html>

<?php } else {
    header('location:/welcome');
}

?>