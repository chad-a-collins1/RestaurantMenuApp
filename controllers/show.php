<?php

class Show extends BaseController {

	public function Display() {

		$viewmodel = new ShowModel();
		$this->ReturnView($viewmodel->Display(), false);

	}
}

?>