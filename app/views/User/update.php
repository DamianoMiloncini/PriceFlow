<html>
<head>
	<title><?= $name ?> view</title>
	
</head>
<body>
	<div class='container'>
		<form method='post' action=''>
		<div class="form-group">
				<label>Username:<input type="text" class="form-control" name="username"  value='<?= $data->username ?>' /></label>
			</div>
			<div class="form-group">
				<label>Password:<input type="text" class="form-control" name="password_hash"  value='' /></label>
			</div>
            <div class="form-group">
				<label>First name:<input type="text" class="form-control" name="first_name"  value='<?= $data->first_name ?>' /></label>
			</div>
			<div class="form-group">
				<label>Last name:<input type="text" class="form-control" name="last_name"  value='<?= $data->last_name ?>' /></label>
			</div>
			<div class="form-group">
				<input type="submit" name="action" value="Update my account" /> 
				<a href='/home'>Cancel</a>
			</div>
		</form>
	</div>
</body>
</html>