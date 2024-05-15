<html>
<head>
<title><?=  __('2fa set up') ?></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 350px;
            padding: 20px;
            height: auto;
            border-radius: 10px;
            background-color: #f8f9fa;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .userBtn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            display: block;
            text-align: center;
            text-decoration: none;
            margin-top: 10px;
        }

        .userBtn:hover {
            background-color: #0056b3;
        }

        </style>
</head>
<body>
    <div class = "container">
<p><?= __('Submit the 6-digit code for this site from your Authenticator app') ?></p>
<form method="post" action="">
<label><?= __('Current code')?> :<input type="text" name="totp" 
/></label>
<input class = "userBtn" type="submit" name="action" value="<?= __('Verify code') ?>" />
</form>
    </div>
</body>
</html>