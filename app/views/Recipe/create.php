<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= __('Create Recipe') ?></title>

    <style>
        body {
            font-family: 'Nunito Sans', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        #wrapper {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }

        h2 {
            font-size: 28px;
            font-weight: 500;
            margin-bottom: 20px;
        }

        form {
            text-align: left;
        }

        label {
            font-size: 16px;
            font-weight: 500;
            color: #495057;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 20px;
            resize: none;
        }

        input[type="file"] {
            margin-top: 5px;
        }

        select {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 20px;
            appearance: none;
        }

        button[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>

</head>

<body>
    <div id="wrapper">
        <h2><?= __('Create Recipe') ?></h2>

        <form action="/Recipe/create" method="post" enctype="multipart/form-data">
            <label for="title"><?= __('Title:') ?></label>
            <input type="text" id="title" name="title" placeholder=<?= __("Title") ?> required>

            <label for="content"><?= __('Content:') ?></label>
            <textarea name="content" rows="6" placeholder=<?= __("Describe this recipe...") ?> required></textarea>

            <label for="duration"><?= __('Duration (minutes):') ?></label>
            <div style="display: flex;">
                <input type="number" id="duration" name=<?= __('duration') ?> required>
            </div>

            <label for="image"><?= __('Image:') ?></label>
            <input type="file" id="image" name=<?= __("image") ?> required>

            <label for="privacy_status"><?= __('Privacy:') ?></label>
            <select id="privacy_status" name="privacy_status">
                <option value="public"><?= __('Public') ?></option>
                <option value="private"><?= __('Private') ?></option>
            </select>

            <button type="submit"><?= __('Continue') ?></button>
        </form>
    </div>
</body>

</html>
