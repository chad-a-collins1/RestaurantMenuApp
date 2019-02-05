<?php


$display = new Display();
$display->Header();
$display->Body($viewmodel);
$display->Footer();

class Display 
{

	public function Header()
	{
		require_once('views/show/templates/header_template.html');
	}
		
	public function Body($viewmodel)
	{
	    foreach ($viewmodel as $menu)
	    {
	    	$template_header= new Template();
   		$template_header->file = "views/show/templates/label_template.html";
		$template_header->set('Title', $menu['title']);

		$template_header->display();
	
		$template_body = new Template();
		$template_body->file = "views/show/templates/menu_template.html";

		foreach ($menu['data'] as $menuitem)
		{
			$template_body->set('itemname', strtoupper( $menuitem->itemname) );
			$template_body->set('description', $menuitem->description);
			$template_body->set('servingsize', $menuitem->servingsize);
			$template_body->set('price', $menuitem->price);
			
			$template_body->display();
		}	
	    }				
	}
	
	public function Footer()
	{
			require_once('views/show/templates/footer_template.html');
	}
}



?>