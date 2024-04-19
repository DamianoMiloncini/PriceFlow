<html>
<head>
<title>Security Check</title>
</head>
<body>
<p>Please enter your password:</p>
<form method="post" action="">
<label>Password: <input type="text" name="password"/></label>
<input type="submit" name="action" value="Verify password" /> <br>
<label id = 'errorMsg'><?= $data ?></label>
</form>
</body>
</html>