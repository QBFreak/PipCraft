/* minecraft.dyed_beds.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Crafting recipes for dying beds from a dyed bed and dye
 *  Comes in single and qty 8 variants
 *
 * TODO: This could be redone by iterating over an associative array of meta -> dye
 */

scripts.logger.crt.logInfo("Adding recipes for dyed beds");


recipes.removeShapeless(<minecraft:bed:15>, [<minecraft:bed>,<ore:dyeBlack>]);
recipes.removeShapeless(<minecraft:bed:14>, [<minecraft:bed>,<ore:dyeRed>]);
recipes.removeShapeless(<minecraft:bed:13>, [<minecraft:bed>,<ore:dyeGreen>]);
recipes.removeShapeless(<minecraft:bed:12>, [<minecraft:bed>,<ore:dyeBrown>]);
recipes.removeShapeless(<minecraft:bed:11>, [<minecraft:bed>,<ore:dyeBlue>]);
recipes.removeShapeless(<minecraft:bed:10>, [<minecraft:bed>,<ore:dyePurple>]);
recipes.removeShapeless(<minecraft:bed:9>, [<minecraft:bed>,<ore:dyeCyan>]);
recipes.removeShapeless(<minecraft:bed:8>, [<minecraft:bed>,<ore:dyeLightGray>]);
recipes.removeShapeless(<minecraft:bed:7>, [<minecraft:bed>,<ore:dyeGray>]);
recipes.removeShapeless(<minecraft:bed:6>, [<minecraft:bed>,<ore:dyePink>]);
recipes.removeShapeless(<minecraft:bed:5>, [<minecraft:bed>,<ore:dyeLime>]);
recipes.removeShapeless(<minecraft:bed:4>, [<minecraft:bed>,<ore:dyeYellow>]);
recipes.removeShapeless(<minecraft:bed:3>, [<minecraft:bed>,<ore:dyeLightBlue>]);
recipes.removeShapeless(<minecraft:bed:2>, [<minecraft:bed>,<ore:dyeMagenta>]);
recipes.removeShapeless(<minecraft:bed:1>, [<minecraft:bed>,<ore:dyeOrange>]);
// Don't have a recipe for <minecraft:bed> as you can't dye a white bed white

recipes.addShapeless(<minecraft:bed:15>, [<ore:bedDyable>,<ore:dyeBlack>]);
recipes.addShapeless(<minecraft:bed:14>, [<ore:bedDyable>,<ore:dyeRed>]);
recipes.addShapeless(<minecraft:bed:13>, [<ore:bedDyable>,<ore:dyeGreen>]);
recipes.addShapeless(<minecraft:bed:12>, [<ore:bedDyable>,<ore:dyeBrown>]);
recipes.addShapeless(<minecraft:bed:11>, [<ore:bedDyable>,<ore:dyeBlue>]);
recipes.addShapeless(<minecraft:bed:10>, [<ore:bedDyable>,<ore:dyePurple>]);
recipes.addShapeless(<minecraft:bed:9>, [<ore:bedDyable>,<ore:dyeCyan>]);
recipes.addShapeless(<minecraft:bed:8>, [<ore:bedDyable>,<ore:dyeLightGray>]);
recipes.addShapeless(<minecraft:bed:7>, [<ore:bedDyable>,<ore:dyeGray>]);
recipes.addShapeless(<minecraft:bed:6>, [<ore:bedDyable>,<ore:dyePink>]);
recipes.addShapeless(<minecraft:bed:5>, [<ore:bedDyable>,<ore:dyeLime>]);
recipes.addShapeless(<minecraft:bed:4>, [<ore:bedDyable>,<ore:dyeYellow>]);
recipes.addShapeless(<minecraft:bed:3>, [<ore:bedDyable>,<ore:dyeLightBlue>]);
recipes.addShapeless(<minecraft:bed:2>, [<ore:bedDyable>,<ore:dyeMagenta>]);
recipes.addShapeless(<minecraft:bed:1>, [<ore:bedDyable>,<ore:dyeOrange>]);
recipes.addShapeless(<minecraft:bed>, [<ore:bedDyable>,<ore:dyeWhite>]);

