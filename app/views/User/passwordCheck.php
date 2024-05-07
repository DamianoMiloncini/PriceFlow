<html>
<head>
<title>Security Check</title>
<style>
        h3 {
            text-align: center;
            margin-top: 0;
            color: #666;
        }
        label {
            color: #333;
        }
    </style>
</head>
<body>
<h3>Authentication check</h3>
<div class='container'>
<form method="post" action="">
    <?php 
    if($data != null) {
        echo "<script>alert('$data')</script>";   //if the password or secret is wrong, show alert
    }
    ?> 
    <div class="form-group">
    <label>
        Password:<input type="text" class="form-control" name="password"  value='' />
    </label>

            </div>
            <div class="form-group">
           <label>
            Submit the 6-digit code for this site from your Authenticator app<input type="text" class="form-control" name="totp"/>
            </label>
   
            </div>
    <br>
    <input class = "userBtn" type="submit" name="action" value="Verify code">
    
</form>
</div>
</body>
</html>