<?php

$display = new Display();
$display->Header();
$display->Body($viewmodel);
$display->Footer();



class Display{

	public function Header()
	{
		require_once('views/assign/templates/header_assignmenuitem.html');
	}

	public function Body($viewmodel)
	{
	
		$template_body1 = new Template();
		$template_body1->file = "views/assign/templates/body_assignmenuitem1.html";

		foreach ($viewmodel as $selectlist)
		{
			foreach ($selectlist['menuitem'] as $menuitem)
			{
			   $template_body1->set('menuitemid', $menuitem->menuitemid);
			   $template_body1->set('itemname', $menuitem->itemname);
			   $template_body1->display();
			}
		}	


		require('views/assign/templates/body_assignmenuitem2.html');


		$template_body3 = new Template();
		$template_body3->file = "views/assign/templates/body_assignmenuitem3.html";

		foreach ($viewmodel as $selectlist)
		{
			foreach ($selectlist['menu'] as $menuid => $menuname) 
			{
			   $template_body3->set('menuname', $menuname);
			   $template_body3->set('menuid', $menuid);
			   $template_body3->display();
			}
				
		}
	}

	public function Footer()
	{
		require_once('views/assign/templates/footer_assignmenuitem.html');
	}
}



?>