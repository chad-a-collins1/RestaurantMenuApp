<?php

class AssignModel {

	public function Display()
	{
		$loadtable = new DBMapper();
  		$menuitems=$loadtable->getMenuItemTable();
		$arr_menuitems = array("menuitem"=>$menuitems);

		$menus = array("2"=>"Drinks","3"=>"Lunch & Dinner","5"=>"Kids","6"=>"Dessert","7"=>"Appetizers");
		$arr_menus = array("menu"=>$menus);
		
		return array($arr_menuitems, $arr_menus);
	}	

}


?>