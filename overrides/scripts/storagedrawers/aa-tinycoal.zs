/* aa-tinycoal.zs v1.1
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Changed AA Tiny Coal/Charcoal recipies to work in nines instead of eights (1 Coal <-> 9 Tiny Coal)
 *  This is so they work properly with Storage Drawers: Compacting Drawers
 *
 *  v1.1 - Removed the 1:8 / 8:1 recipes as they were allowing for infinite coal/charcoal production
 */

scripts.logger.crt.logInfo("Tweaking recipes for Tiny Coal and Tiny Charocal");

// Remove the recipes for 1 <-> 8
recipes.removeShaped(<minecraft:coal:1>, [[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>],[<actuallyadditions:item_misc:11>, null, <actuallyadditions:item_misc:11>], [<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]]);
recipes.removeShaped(<minecraft:coal>, [[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],[<actuallyadditions:item_misc:10>, null, <actuallyadditions:item_misc:10>], [<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>]]);
recipes.removeShapeless(<actuallyadditions:item_misc:11> * 8, [ <ore:charcoal>]);
recipes.removeShapeless(<actuallyadditions:item_misc:10> * 8, [ <ore:coal>]);

// Add the recipes for 1 <-> 9
recipes.addShapeless(<minecraft:coal:1>, [<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>,<actuallyadditions:item_misc:11>]);
recipes.addShapeless(<minecraft:coal>, [<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>,<actuallyadditions:item_misc:10>]);
recipes.addShapeless(<actuallyadditions:item_misc:11> * 9, [<ore:charcoal>]);
recipes.addShapeless(<actuallyadditions:item_misc:10> * 9, [<ore:coal>]);

