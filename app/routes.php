<?php
$this->addRoute('','Welcome,index');
$this->addRoute('home','Welcome,index');
$this->addRoute('map','Welcome,map');
$this->addRoute('cart','Cart,loadData');
$this->addRoute('User/registration','User,register');
$this->addRoute('User/login','User,login');
$this->addRoute('User/logout' , 'User,logout');
$this->addRoute('User/updateAccount','User,updateUser');
$this->addRoute('User/setup2fa' , 'User,setup2fa');
$this->addRoute('User/check2fa' , 'User,check2fa');
$this->addRoute('User/account' , 'User,viewAccount');
$this->addRoute('User/passwordCheck' , 'User,verifyPassword');
$this->addRoute('User/update2fa' , 'User,update2fa');
$this->addRoute('User/registerLocation' , 'User,registerLocation');
$this->addRoute('User/updateLocation' , 'User,updateLocation');
$this->addRoute('User/bookmark' , 'Bookmark,displayFavorites');
$this->addRoute('Recipe/create' , 'Recipe,create');
$this->addRoute('Recipe/displayAll', 'Recipe,displayAll');
$this->addRoute('Recipe/displayPrivate', 'Recipe,displayPrivate');
$this->addRoute('Recipe/displayUserRecipes', 'Recipe,displayUserRecipes');
$this->addRoute('Recipe/recipeDetails/{recipe_id}', 'Recipe,recipeDetails');
$this->addRoute('Recipe/edit/{recipe_id}', 'Recipe,edit');
$this->addRoute('Recipe/update/{recipe_id}', 'Recipe,update');
$this->addRoute('Recipe/delete/{recipe_id}', 'Recipe,delete');
$this->addRoute('Recipe/deleteConfirmation/{recipe_id}', 'Recipe,deleteConfirmation');
$this->addRoute('Recipe/search', 'Recipe,search');
$this->addRoute('Recipe/searchResults', 'Recipe,searchResults');
$this->addRoute('Item/search/{query}', 'ItemController,search');
$this->addRoute('Item/info/{item_id}', 'ItemController,showItem');
$this->addRoute('searchLocation', 'searchLocation,search');
$this->addRoute('storeDetails', 'searchLocation,storeDetails');
$this->addRoute('bookmark/delete/{item_id}', 'bookmark,delete');


