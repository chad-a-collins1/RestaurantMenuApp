<?php

class Edit extends BaseController {

	public function Display() 
	{
		$viewmodel = new EditModel();
		$this->ReturnView($viewmodel->Display(), false);
	}

	public function Save()
	{
    		$updateitem = new DBMapper();
    		$updateitem->Save($_POST);
		header('Location: index.php?controller=edit&action=Display');
	}

	public function Erase()
	{
    		$eraseitem = new DBMapper();
    		$eraseitem->Erase($_GET['id']); //menuitemid
		header('Location: index.php?controller=edit&action=Display');
	}

}

?>