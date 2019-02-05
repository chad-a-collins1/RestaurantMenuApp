<?php

class Assign extends BaseController {

	protected function Display() {

		$viewmodel = new AssignModel();
		$this->ReturnView($viewmodel->Display(), false);
	}

	protected function Save()
	{
		$assignitem = new DBMapper();
		$assignitem->Save($_POST); 
		header('Location: index.php?controller=show&action=Display');
	}
}

?>