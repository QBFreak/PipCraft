/* dyed_panes.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Crafting recipes for dyed glass panes from glass pane and dye
 *  Comes in single and qty 8 variants
 *
 * TODO: This could be redone by iterating over an associative array of meta -> dye
 */

scripts.logger.crt.logInfo("Adding recipes for dyed panes");

// Single Panes
recipes.addShapeless(<minecraft:stained_glass_pane:15>, [<ore:paneGlass>,<ore:dyeBlack>]);
recipes.addShapeless(<minecraft:stained_glass_pane:14>, [<ore:paneGlass>,<ore:dyeRed>]);
recipes.addShapeless(<minecraft:stained_glass_pane:13>, [<ore:paneGlass>,<ore:dyeGreen>]);
recipes.addShapeless(<minecraft:stained_glass_pane:12>, [<ore:paneGlass>,<ore:dyeBrown>]);
recipes.addShapeless(<minecraft:stained_glass_pane:11>, [<ore:paneGlass>,<ore:dyeBlue>]);
recipes.addShapeless(<minecraft:stained_glass_pane:10>, [<ore:paneGlass>,<ore:dyePurple>]);
recipes.addShapeless(<minecraft:stained_glass_pane:9>, [<ore:paneGlass>,<ore:dyeCyan>]);
recipes.addShapeless(<minecraft:stained_glass_pane:8>, [<ore:paneGlass>,<ore:dyeLightGray>]);
recipes.addShapeless(<minecraft:stained_glass_pane:7>, [<ore:paneGlass>,<ore:dyeGray>]);
recipes.addShapeless(<minecraft:stained_glass_pane:6>, [<ore:paneGlass>,<ore:dyePink>]);
recipes.addShapeless(<minecraft:stained_glass_pane:5>, [<ore:paneGlass>,<ore:dyeLime>]);
recipes.addShapeless(<minecraft:stained_glass_pane:4>, [<ore:paneGlass>,<ore:dyeYellow>]);
recipes.addShapeless(<minecraft:stained_glass_pane:3>, [<ore:paneGlass>,<ore:dyeLightBlue>]);
recipes.addShapeless(<minecraft:stained_glass_pane:2>, [<ore:paneGlass>,<ore:dyeMagenta>]);
recipes.addShapeless(<minecraft:stained_glass_pane:1>, [<ore:paneGlass>,<ore:dyeOrange>]);
recipes.addShapeless(<minecraft:stained_glass_pane>, [<ore:paneGlass>,<ore:dyeWhite>]);

// 8-Panes
recipes.addShaped(<minecraft:stained_glass_pane:15> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeBlack>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:14> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeRed>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:13> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeGreen>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:12> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeBrown>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:11> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeBlue>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:10> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyePurple>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:9> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeCyan>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:8> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeLightGray>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:7> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeGray>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:6> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyePink>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:5> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeLime>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:4> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeYellow>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:3> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeLightBlue>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:2> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeMagenta>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane:1> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeOrange>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped(<minecraft:stained_glass_pane> * 8, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:paneGlass>, <ore:dyeWhite>, <ore:paneGlass>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
