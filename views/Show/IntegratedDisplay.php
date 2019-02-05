<?php
?>
<html>
<head>
</head>
<body>
<img src="images/logo.jpg">
<br><br>
<table width='900' border='0' cellpadding='0' cellspacing='0'>

<tr><td colspan='3'><center><h1><font style='Georgia'><i>


<?php
foreach ($viewmodel as $menu)
{
?>
		<tr><td colspan='3'><center><h1><font style='Georgia'><i>
		<?php echo $menu['title']; ?>
		</i></font></h1></center></td></tr>
		<tr>
		<th width='*' align='left'><b>Menu Item</b></th>
		<th width='250' align='left'><b>Serving Size</b></th>
		<th width='50' align='left'><b>Price</b></th>
		</tr>
		<tr><td colspan='3'>&nbsp;</td></tr>
		<tr>
<?php
	foreach ($menu['data'] as $menuitem)
	{
?>
		<td width='*'><b>
		<?php echo strtoupper($menuitem->itemname); ?>
		</b></td>

		<td width='250'>
		<?php echo $menuitem->servingsize; ?>
		</td>
		<td width='40'>$
		<?php echo $menuitem->price; ?>
		</td>
		</tr>
		<tr><td colspan='3'><div style='word-wrap: break-word;'><font size='2'>
		<?php echo $menuitem->description; ?>
		</font></div></td></tr>
		<tr><td colspan='3'>&nbsp;</td></tr>
<?php
	}
	
}
?>

</table>
<br><br>
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
