<html>
<head>
	<title><?= $name ?> view</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="\app\views\Styles\styles.css">
</head>
<body>
	<div class='container'>
		<form method='post' action=''>
		<div class="form-group">
				<label><?= __('Username') ?>:<input type="text" class="form-control" name="username"  value='<?= $data->username ?>' /></label>
			</div>
			<div class="form-group">
				<label><?= __('Password') ?>:<input type="text" class="form-control" name="password_hash"  value='' /></label>
			</div>
            <div class="form-group">
				<label><?= __('First Name') ?>:<input type="text" class="form-control" name="first_name"  value='<?= $data->first_name ?>' /></label>
			</div>
			<div class="form-group">
				<label><?= __('Last Name') ?>:<input type="text" class="form-control" name="last_name"  value='<?= $data->last_name ?>' /></label>
			</div>
			<div class="form-group">
				<br>
				<input type="submit" class = "userBtn" name="action" value="<?= __('Update my account') ?>" /> 
				<a class = "userBtn" href='/home'><?= __('Cancel') ?></a>
			</div>
		</form>
	</div>
</body>
</html>