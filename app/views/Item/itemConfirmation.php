<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; 
            margin: 0; 
        }

        #confirmationContainer {
            display: flex;
            flex-direction: column; 
            justify-content: center;
            align-items: center;
            width: 100%;
            text-align: center;
        }

        .itemCard {
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.08);
            padding: 1%;
            margin-bottom: 1.5%;
            display: flex;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: center;
            width: 50%;
        }

        .itemImages {
            width: 10%;
            height: auto;
            margin-left: 1%;
            margin-right: 2%;
        }

        .itemCard h5 {
            margin: 0 8px;
        }
    </style>
</head>

<body>

    <div id="cartTopBar">
        <?php include 'app/views/topBar.php'; ?>
    </div>

    <div id="confirmationContainer">
        <div class="itemCard">
            <i style="color: green; margin-right: 15px; font-size: 175%;" class="bi bi-check-circle-fill"></i>
            <img class="itemImages" src="<?php echo $item['image']; ?>" alt="Item Image">
            <h5><?php echo $item['name']; ?></h5>
            <h5 style="color: green">successfully added to cart!</h5>
        </div>
        <h5>Redirecting in 3 seconds...</h5>
    </div>

    <script>
        setTimeout(function() {
            window.location.href = "/home";
        }, 3000);
    </script>

</body>

</html>
