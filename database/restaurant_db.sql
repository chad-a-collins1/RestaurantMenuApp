CREATE DATABASE `restaurant` /*!40100 DEFAULT CHARACTER SET utf8 */

CREATE TABLE `menuitem` (
  `menuitemid` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `servingsize` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`menuitemid`),
  UNIQUE KEY `menuitemid_UNIQUE` (`menuitemid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8$$


CREATE TABLE `menuitemtomenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuitemid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  PRIMARY KEY (`id`,`menuitemid`,`menuid`),
  UNIQUE KEY `idmenuitemtomenu_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8$$

INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (2,'Cherry Soda','Refreshing soda blended with candied cherry syrup','1.59','','16 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (4,'GULF AMBERJACK SANDWICH','Served seasoned and grilled or pan-blackened on a toasted buttery brioche bun with lettuce, tomato, red onion and sliced pickles. Served with your choice of a side item . ','11.95',NULL,'10 oz fillet');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (5,'HAWAIIAN COCONUT SHRIMP','Butterflied jumbo shrimp hand dipped in our sweet coconut milk batter, then rolled in toasted coconut flakes and deep-fried golden. Served with apricot dipping sauce. Served with hot roll, butter, & your choice of a side item.','14.25',NULL,'8 shrimp');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (6,'NEW YORK STRIP STEAK','Our hand-cut 12 ounce New York Strip, seasoned just right! Cooked by our grillmaster to your specification. Served with hot roll, butter, & your choice of a side item.','19.95',NULL,'12 oz ');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (7,'SOUTHERN STYLE CRABCAKES','Three golden brown crabcakes served over a garnish of rice pilaf with homemade remoulade sauce. All entrees served with hot roll, butter, & your choice of a side item.','13.95','','2 cakes');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (8,'OYSTERS BENEDICT','Fried gulf oysters, sliced tomatoes and poached eggs on toasted English muffins, topped with creamy hollandaise sauce. All Benedicts served with your choice of home-style potatoes, buttery grits or fresh fruit.','10.95',NULL,'8 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (9,'TWIN JUMBO SOFT SHELL CRAB','Two soft shell crabs dipped in our Cajun breading and fried golden. Served over Creole shrimp stuffing & topped with basil buerre blanc. This comes with a hot roll, butter & your choice of a side item.','20.95',NULL,'2 crabs');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (10,'Alaskan KING CRAB LEGS','Fresh, lushes Alaskan Red King Crab Legs, served with drawn butter, lemon and crab splitters. All entrees served with hot roll,butter & your choice of a side item.','36.35','','1.5 lbs');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (11,'TILAPIA ROYALE','Pan-blackened tilapia served over fresh spinach cakes topped with sauteed crawfish and hollandaise sauce. Served with hot roll & butter and your choice of a side item.','13.95',NULL,'14 oz tilapia fillet');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (12,'PREMIUM STEAK BURGER','Served on a toasted buttery brioche bun with lettuce, tomato, red onion and sliced pickles. This is served char-grilled or blackened. Served with your choice of side item.','7.95',NULL,'0.75 lb');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (13,'Soft Shell Crab Po-Boy','Served on a toasted hoagie roll with shredded lettuce, or Cajun cole slaw, sliced tomatoes and homemade remoulade sauce. Served with your choice of a side item. Add $.50 for a Baked or Stuffed Potato.','10.95',NULL,'2 crabs');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (14,'OLD FASHIONED MONTE CRISTO','Pit smoked ham, Hickory smoked turkey and sliced provolone, egg-battered and fried golden. Dusted with powdered sugar and served with honey mustard sauce for dipping. Served with your choice of a side item.','9.95',NULL,'1 lb sandwich');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (28,'BACON CHEESEBURGER','Served on a buttery toasted brioche bun with lettuce, tomato, red onion, bacon and sliced pickles.Your choice of cheddar,provolone,swiss, or pepperjack cheese. This comes with your choice of a side item.','8.50',NULL,'.75 lb, 2 sides');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (29,'STUFFED BAKED POTATO','Baked potato stuffed with your choice of butter, sour cream, cheese, bacon and chives.','2.25',NULL,'1 potato');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (30,'STEAK FRIES','Hand cut steak fries','1.75',NULL,NULL);
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (31,'ATLANTIC YELLOW FIN TUNA','Only the best available finfish and shellfish for our daily selection. This fish is offered pan-blackened or lightly seasoned & grilled. Served over rice pilaf with your choice of a side item. ','14.75',NULL,'16 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (32,'NEW ENGLAND CLAM CHOWDER','Fresh vegetables sauteed in olive oil, bay leaves, white wine, bay seasoning and chopped clams. Finished with clam stock, roux and heavy cream','4.95',NULL,'1 cup');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (33,'GRILLED LOUISIANA OYSTERS','6 oysters on the half shell, topped with Parmesan cheese and butter, char-grilled until plump.','10.95',NULL,'6 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (34,'JUST-SHUCKED OYSTERS','Fresh oysters straight from the Lousiana Gulf Coast','6.99',NULL,'6 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (35,'ICE COLD PEEL-N-EAT SHRIMP','Large Gulf shrimp steeped in beer, fresh lemon and country herbs. Chilled and served cold on ice with our homemade horse radish red sauce.','13.95',NULL,'1 dozen');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (36,'RED BEANS & RICE','Fresh vegetables, lots of slow-smoked ham shanks and spicy Creole sausage simmered to perfection. We then top it off with diced red and green onions and mixed cheese. Bowl (includes creole sausage and a side of cheese toast.)','4.25',NULL,'12 oz cup');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (37,'SEAFOOD GUMBO','Our delicious gumbo starts with a rich brown butter roux, homemade seafood stock and fresh vegetables. We add grilled Cajun sausage, gulf shirmp and crawfish tails then top it off with a scoop of rice.','4.99',NULL,'12 oz cup');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (38,'THE BIG CHEF SALAD','House salad mix topped with fresh diced tomatoes, shredded cheese and fresh bacon crumbles, slow smoked ham, hickory smoked turkey and sliced egg with your choice of homemade dressing. Choice of dressings. ','10.95',NULL,NULL);
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (39,'KEY LIME PIE','Made from scratch, this light creamy pie has just the right amount of sweet and tart','3.99',NULL,'1 slice');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (40,'STRAWBERRY SHORTCAKE',' Strawberry shortcake with strawberry sauce and whipped cream.','4.99',NULL,'12 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (41,'BEER BATTERED ONION RINGS','Fresh cut beer battered onion rings!','1.75',NULL,'14 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (42,'ITALIAN SPINACH','Italian Spinach topped with Parmesan cheese.','1.75',NULL,'8 oz scoop');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (43,'VEGETABLE SAUTE','Assortment of mixed vegetables sauteed.','1.75',NULL,'8 oz scoop');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (45,'Fresh Brewed Coffee','Fresh Ground, Breshly Brewed Coffee','0.59',NULL,'8 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (76,'Ice Water','Ice Cold Water with Lemon','0.29','','12 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (77,'Swordfish Maque Choux','Fresh swordfish pan seared and served with Maque Choux fresh corn, Tasso ham, roasted peppers, garlic, tomatoes and green onions served with grits and micro arugula','32','','12 oz swordfish steak');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (78,'Jalapeño-Lime Spritzer','A refreshing chilled spritzer with a kick','1.99','','16 oz');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (83,'OYSTERS ROCKEFELLER','6 oysters baked, topped with Pernod flavored spinach and Parmesan cheese.','12.55','','6 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (84,'CHILLED SHUCKED OYSTERS',' Our fresh live oysters are from the Lousiana Gulf Coast and are the best live oysters to be found ','13.99','','12 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (85,'GRILLED LOUISIANA OYSTERS','6 oysters on the half shell, topped with Parmesan cheese and butter, char-grilled until plump.','9.99','','6 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (86,'OYSTERS BIENVILLE',' 		6 oysters baked, topped with Bay shrimp in a rich white wine cream sauce.','9.99','','6 oysters');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (87,'PEEL-N- EAT SHRIMP','Large Gulf shrimp steeped in beer, fresh lemon and country herbs. Chilled and served with our homemade red sauce.','9.99','','12 shrimp');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (88,'GOLDEN FRIED MUSHROOMS','Baby white mushrooms hand-breaded and fried golden brown. Served with horseradish sauce.','8.55','','1 bowl');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (89,'GULF SHRIMP SKEWER','Seven large shrimp skewered and prepared to your liking. Grilled or Blackened','8.99','','7 shrimp');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (90,'Crab Bisque','Sherry infused cream and crab stock with lump crab meat. Served with fresh made buttery corn bread. ','7.50','','1 bowl');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (91,'KING CRAB BISQUE','Our signature soup loaded with King Crab meat.','8.99','','1 bowl');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (94,'HALF PINT HAMBURGER','Served with lettuce, tomato & pickle. For children under 10 years of age. All items include choice of soft drink, fruit, fries, vegetable or broccoli.','4.95','','0.25 lb');
INSERT INTO `menuitem` (`menuitemid`,`itemname`,`description`,`price`,`picture`,`servingsize`) VALUES (95,'KID''S GRILLED CHEESE','Sliced Cheddar on White bread with Pickles. For children under 10 years of age. All children''s items include choice of soft drink, fruit, fries, vegetable or broccoli','4.95','','1 sandwich');

INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (2,2);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (4,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (5,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (6,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (7,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (8,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (9,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (10,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (11,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (12,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (13,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (14,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (28,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (45,2);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (76,2);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (77,3);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (78,2);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (83,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (84,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (85,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (86,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (87,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (88,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (89,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (90,7);
INSERT INTO `menuitemtomenu` (`menuitemid`,`menuid`) VALUES (94,5);