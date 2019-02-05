<?php


$display = new Display();
$display->Header();
$display->Body($viewmodel);
$display->Footer();


class Display {

	public function Header()
	{
		require_once('views/edit/templates/header_editmenuitem.html');
	}

	public function Body($viewmodel)
	{
	
		$template_body = new Template();
		$template_body->file = "views/edit/templates/body_editmenuitem.html";

		foreach ($viewmodel as $menuitem)
		{
			$template_body->set('menuitemid', $menuitem->menuitemid);
			$template_body->set('itemname', $menuitem->itemname);
			$template_body->set('description', $menuitem->description);
			$template_body->set('servingsize', $menuitem->servingsize);
			$template_body->set('price', $menuitem->price);
			
			$template_body->display();
		}					
	}

	public function Footer()
	{
		require_once('views/edit/templates/footer_editmenuitem.html');
	}
}


?>