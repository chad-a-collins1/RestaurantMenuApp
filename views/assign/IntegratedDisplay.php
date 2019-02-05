<html>
<head>
<title>Assign Menu Items to Menus</title>
</head>
<body>
<form method="POST" action="index.php?controller=Assign&action=Save">
<table>
<tr><td>Select a Single Menu Item:</td></tr>
<tr>
<td>
<select name="menuitemid">

<?php
//Loop through the nested array returned by the AssignModel and populate the
//select list that displays all the menu items from the database
foreach ($viewmodel as $selectlist)
{
	foreach ($selectlist['menuitem'] as $menuitem)
	{

?>

<option value="<?php echo $menuitem->menuitemid ?>"><?php echo $menuitem->itemname ?></option>

	<?php
	}
}
	?>

</select>
</td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td>Choose the Menus you want to add the Menu Item to</td></tr>
<tr><td>
<select name="menuid" multiple>

<?php
//Loop through the nested array returned by the AssignModel and populate the
//select list that displays all the menus
foreach ($viewmodel as $selectlist)
{
	foreach ($selectlist['menu'] as $menuid => $menuname) 
	{

?>

<option value="<?php echo $menuid ?>"><?php echo $menuname ?></option>

	<?php
	}
}
	?>



</select>
</td>
</tr>
</table>
<br>
<br>
<input type="submit" value="UPDATE">
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
<table width="100%">
<tr>
<td><a href="http://localhost/index.php?controller=show&action=Display">View Menu</a></td>
<td><a href="http://localhost/index.php?controller=edit&action=Display">Edit Menu</a></td>
<td><a href="http://localhost/index.php?controller=add&action=Display">Add New MenuItem</a></td>
<td><a href="http://localhost/index.php?controller=assign&action=Display">Assign Item to Menu</a></td>
</tr>
</table>
</center>
</body>
</html>
</body>
</html>