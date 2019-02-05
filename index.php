<?php
ini_set('display_errors',1); 
error_reporting(E_ALL);

require("helperclasses/loader.php");
require("helperclasses/basecontroller.php");
require("helperclasses/Database.php");
require("helperclasses/Template.php");

require("models/MenuModel.php");

//require the model classes
require("models/home.php");
require("models/show.php");
require("models/add.php");
require("models/assign.php");
require("models/edit.php");


//require the controller classes
require("controllers/home.php");
require("controllers/show.php");
require("controllers/add.php");
require("controllers/assign.php");
require("controllers/edit.php");


//create the controller and execute the action
$loader = new Loader($_GET);
$controller = $loader->CreateController();
$controller->ExecuteAction();
?>