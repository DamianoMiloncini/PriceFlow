<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login/Register Button</title>
<style>
  .toggle-button {
    display: inline-block;
    padding: 10px 20px;
    border: 2px solid #333;
    cursor: pointer;
    transition: all 0.3s ease;
    background-color: #fff;
    color: #333;
  }

  .toggle-button:hover {
    background-color: #333;
    color: #fff;
  }
</style>
</head>
<body>

<div class="toggle-button" onmouseenter="this.style.backgroundColor='#007bff'; this.style.color='#fff';" onmouseleave="this.style.backgroundColor='#fff'; this.style.color='#333';">
  <span style="float: left;">Log In</span>
  <span style="float: right;">Register</span>
</div>

</body>
</html>
