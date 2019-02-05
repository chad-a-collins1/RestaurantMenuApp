<html>
<head>
</head>
<body>
<form method="POST" action="index.php?controller=Add&action=Save">
<input type="hidden" name="menuitemid" value="none">
<table>
<tr><td>Item Name:</td><td><input type="text" name="itemname"></td></tr>
<tr><td>Description:</td><td><input type="text" name="description"></td></tr>
<tr><td>Serving Size:</td><td><input type="text" name="servingsize"></td></tr>
<tr><td>Picture:</td><td><input type="text" name="picture"></td></tr>
<tr><td>Price:</td><td><input type="text" name="price"></td></tr>
<tr><td><input type="submit" name="submit" value="submit"></td></tr>
</table>
</form>
</ br>
</ br>
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