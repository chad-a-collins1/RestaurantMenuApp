<?php

$display = new Display();
$display->Header();
$display->Body();
$display->Footer();


class Display
{
	public function Header()
	{
		require_once('views/add/templates/header_addmenuitem.html');
	}

	public function Body()
	{
	
		require_once('views/add/templates/body_addmenuitem.html');	
	}

	public function Footer()
	{
		require_once('views/add/templates/footer_addmenuitem.html');
	}
}

?>