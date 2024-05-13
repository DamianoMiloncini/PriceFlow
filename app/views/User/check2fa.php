<html>
<head>
<title>2fa set up</title>
</head>
<body>
<p><?= __('Submit the 6-digit code for this site from your Authenticator app') ?></p>
<form method="post" action="">
<label><?= __('Current code')?> :<input type="text" name="totp" 
/></label>
<input type="submit" name="action" value="<?= __('Verify code') ?>" />
</form>
</body>
</html>