<html>
<head>
<title><?= __('Security Check') ?></title>
<style>
        h3 {
            text-align: center;
            margin-top: 0;
            color: #666;
        }
        label {
            color: #333;
        }
        .containerL{
            margin: 8%;
        }
    </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">
</head>
<body>
<?php include 'app/views/topBar.php'; ?>
<h3><?= __('Authentication check')?></h3>
<div class='containerL'>
<form method="post" action="">
    <?php 
    if($data != null) {
        echo "<script>alert('$data')</script>";   //if the password or secret is wrong, show alert
    }
    ?> 
    <div class="form-group">
    <label>
        <?= __('Password')?>:<input type="text" class="form-control" name="password"  value='' />
    </label>

            </div>
            <div class="form-group">
           <label>
            <?= __('Submit the 6-digit code for this site from your Authenticator app') ?><input type="text" class="form-control" name="totp"/>
            </label>
   
            </div>
    <br>
    <input class = "userBtn" type="submit" name="action" value="<?= __('Verify code') ?>">
    
</form>
</div>
</body>
</html>