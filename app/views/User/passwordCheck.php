<html>
<head>
<title>Security Check</title>
</head>
<body>
<p>Please enter your password:</p>
<form method="post" action="">
<label>Password: <input type="text" name="password"/></label>
<label id = 'errorMsg'><?= $data ?></label>
<p>Submit the 6-digit code for this site from your Authenticator app.</p>
<label>Current code:<input type="text" name="totp"/></label>
<input type="submit" name="action" value="Verify code" />
</form>
</body>
</html>