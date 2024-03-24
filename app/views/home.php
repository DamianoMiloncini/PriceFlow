<html>
    <head>

        <title>Home</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="app\views\homeStyle.css"> 
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">



    </head>

    <body>
        <?php include 'app/views/topBar.php'; ?>

        <div id = "container">
            <div class = "one">
                <div class = "two">
                    <div id = "topLayer">
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

                            <h1 class = 'leading'>
                                The World's
                                <br>
                                <span style="color: #006eff;">Best Prices</span>
                                <br>
                                Are On PriceWave
                            </h1>

                            <h4 class = 'subText'>A breakthrough platform to help shoppers and chefs efficiently find the best prices in local proximities, discovering inspiration, and connect with one another</h4>
                            <div class = 'buttonArea'>
                                <a id="log" href="">Get Started</a>
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
            </div>

            
           
            
        </div>

        <div class = "content">

            <div class = 'navBar'>
                <a id = 'filterButton' href="">
                    <i class="bi bi-funnel"></i>
                    Filter
                </a>
                <textarea id = "search" name="searchBar" placeholder='Search'></textarea></textarea>

                <a id = "sortButton" href="">
                    <i class="bi bi-funnel"></i>
                    Sort
                </a>
            </div>

                <div class = "divider">
                    
                </div>
        </div>

    </body>
</html>