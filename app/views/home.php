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


    <?php if (!isset($_SESSION['user_id'])) { ?>
        <div id="container">

            <div class="two">
                <div id="topLayer">

                    <div class="leftSection">

                        <div class="leftGrid">

                            <img src="app\resources\image7.jpg" id="image7" class='images'>
                            <img src="app\resources\image8.jpg" id="image8" class='images'>
                            <img src="app\resources\image9.jpg" id="image9" class='images'>
                            <img src="app\resources\image10.jpg" id="image10" class='images'>
                            <img src="app\resources\image11.jpg" id="image11" class='images'>
                            <img src="app\resources\image12.jpg" id="image12" class='images'>

                        </div>
                    </div>

                    <div id="middleHeading">

                        <h1 class='leading'>
                            The World's
                            <br>
                            <span style="color: #006eff;">Best Prices</span>
                            <br>
                            Are On PriceWave
                        </h1>

                        <h4 class='subText'>A breakthrough platform to help shoppers and chefs efficiently find the best prices in local proximities, discovering inspiration, and connect with one another</h4>
                        <div class='buttonArea'>
                            <a id="log" href="User/registration">Get Started</a>
                        </div>

                    </div>

                    <div class="rightSection">

                        <div class="rightGrid">

                            <img src="app\resources\pizza.jpg" id="image2" class='images'>
                            <img src="app\resources\image4.jpg" id="image3" class='images'>
                            <img src="app\resources\image3.jpg" id="image4" class='images'>
                            <img src="app\resources\image5.jpg" id="image5" class='images'>
                            <img src="app\resources\image6.jpg" id="image6" class='images'>

                        </div>
                    </div>
                </div>
            </div>
        <?php } else {

        $user = new \app\models\User();
        //get user's information
        $user = $user->getByID($_SESSION['user_id']);
        ?>
            <div id="loggedInTopLayer">
                <div id="loggedInMiddleHeading">

                    <h4 class='loggedInLeading'>
                        Welcome,
                        <span style="color: #006eff;"><?php echo $user->username ?></span>

                    </h4>

                <?php } ?>
                </div>
            </div>


        </div>
        <br>

        <div class="content">

            <div class='navBar'>
                <textarea id="searchHome" name="searchBar" placeholder='Search recipes'></textarea></textarea>
            </div>

            <div class="divider"></div>

            <div id="searchInfoBar">
                <div id="textInformation">
                    <h1 id="contentHeading">Recipes</h1>
                    <h1 id="resultsNumber"></h1>
                </div>
                <div id="searchButtons">

                    <div id="sortButton">
                        <select id="sortOptions" name="sortOptions">
                            <option value="" disabled selected><i class="bi bi-funnel"></i>Sort</option>
                            <option value="dateCreated">Date created</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </div>

                </div>

            </div>


            <script>
                var num = 0;
            </script>

            <div id="recipes">
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

            <script>
                const searchInput = document.getElementById('searchHome');

                // Add event listener for keyup event
                searchInput.addEventListener('keyup', function() {
                    // Call your JavaScript function here
                    fetchData();
                });

                function fetchData() {
                    var inputText = document.getElementById("searchHome").value;
                    if (inputText === "") {
                        // If the search input is empty, fetch all recipes
                        url = "/Recipe/recipeHomePage/0";
                    } else {
                        // Otherwise, fetch recipes based on the search input
                        url = "/Recipe/recipeHomePage/" + inputText;
                    }

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
                            document.getElementById("recipes").innerHTML = data;
                        })
                        .catch(error => {
                            console.error('There was a problem with the fetch request:', error);
                        });
                }

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
                // Get references to the search textarea and the search button
                const searchTextArea = document.getElementById('search');
                const searchButton = document.getElementById('searchButton');

                // Add an event listener to the search textarea
                searchTextArea.addEventListener('input', function() {
                    // Get the value of the textarea and replace spaces with '+'
                    const searchText = searchTextArea.value.trim().replace(/ /g, '+');

                    // Update the href attribute of the search button
                    searchButton.href = searchText ? '/Item/search/' + searchText : '';
                });
            </script>

        </div>

</body>

</html>