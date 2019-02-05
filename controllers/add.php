<?php

class Add extends BaseController {

	protected function Display() {

		$viewmodel = new AddModel();
		$this->ReturnView($viewmodel->Display(), false);
	}

	protected function Save()
	{
		$saveitem = new DBMapper();
		$saveitem->Save($_POST); 
		header('Location: index.php?controller=show&action=Display');
	}
}

?>