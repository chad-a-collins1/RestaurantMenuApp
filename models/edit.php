<?php

class EditModel {

	public function Display()
	{	
	
  	    $loadtable = new DBMapper();
  	    $data=$loadtable->getMenuItemTable();

	    return($data);
	}	

}


?>