<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Recipe</title>

    <style>
        #wrapper {
            font-family: 'Nunito Sans', sans-serif;
            background-color: whitesmoke;
            margin-left: 30%;
            margin-right: 30%;
            text-align: center;
            padding-top: 2%;
            padding-bottom: 100%;
        }

        #continueBtn {
            width: 125px;
            height: 50%;
            display: inline;
            background-color: #fbfdff;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 35px;
            cursor: pointer;
            letter-spacing: 0px;
            transition: background-color 0.3s ease;
            text-align: center;
            line-height: 40px;
        }

        #continueBtn:hover {
            background-color: #ededed;
        }

        #titleBar {
            resize: none;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 5px;
            line-height: 30px;
            height: 40px;
            padding-left: 20px;
            width: 55%;
        }

        #content {
            resize: none;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 5px;
            line-height: 30px;
            height: 55%;
            padding-left: 20px;
            width: 55%;
        }

        #duration {
            resize: none;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            text-decoration: none;
            border: 1px solid rgba(0, 0, 0, 0.08);
            border-radius: 5px;
            line-height: 30px;
            height: 40px;
            padding-left: 20px;
            width: 55%;
        }

    </style>

</head>

<body>
    <div id="wrapper">



        <h2 style="font-size: 45px; font-weight:300;">Recipe Details</h2>

        <div class="divider"></div>

        <form action="/Recipe/create" method="post" enctype="multipart/form-data">
            <!-- <label style="" for="title">Title:</label><br> -->
            <input id="titleBar" type="text" id="title" name="title" placeholder="Title" require><br><br>

            <!-- <label for="content">Content:</label><br> -->
            <textarea id="content" name="content" rows="6" placeholder="Describe this recipe..." required></textarea><br><br>

            <label style="padding-bottom: 10%;" for="duration">Duration (minutes):</label><br>
            <input type="number" id="duration" name="duration" required><br><br>


            <label for="image">Image:<br>
            <input type="file" id="image" name="image" required><br><br>
            </label>


            <label for="privacy_status">Privacy:</label><br>
            <select id="privacy_status" name="privacy_status">
                <option value="public">Public</option>
                <option value="private">Private</option>
            </select><br><br>

            <button id="continueBtn" type="submit">Continue</button>
        </form>
    </div>
</body>


</html>