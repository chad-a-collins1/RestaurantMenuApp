<?php

class ShowModel {

 public function Display() {


  $drinks = new DrinkMenu();
  $appetizers = new AppetizerMenu();
  $lunch = new LunchMenu();
  $dinner = new DinnerMenu();

  $arr_drinks=array("title"=>DrinkMenu::$title,"data"=>$drinks->getAllMenuItems(DrinkMenu::id));
  $arr_appetizers=array("title"=>AppetizerMenu::$title,"data"=>$appetizers->getAllMenuItems(AppetizerMenu::id));
  $arr_lunch=array("title"=>LunchMenu::$title,"data"=>$lunch->getAllMenuItems(LunchMenu::id));
  $arr_dinner=array("title"=>DinnerMenu::$title,"data"=>$dinner->getAllMenuItems(DinnerMenu::id));


  return array($arr_drinks, $arr_appetizers, $arr_lunch, $arr_dinner);

  }

}
?>