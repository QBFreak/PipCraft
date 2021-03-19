/* jei.bigreactors.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Big Reactors Steel and Yellorite/Yellorium from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

scripts.logger.crt.logInfo("Removing Big Reactors Steel, Yellorite/Yellorium and associated recipes from JEI");

// List of items to remove
var items as IItemStack[] = [
    <bigreactors:ingotsteel>,
    <bigreactors:duststeel>,
    <bigreactors:blocksteel>,
    <bigreactors:oreyellorite>,
    <bigreactors:ingotyellorium>,
    <bigreactors:dustyellorium>,
    <bigreactors:blockyellorium>
];

// List of fluids to remove
var liquids as ILiquidStack[] = [
    <liquid:yellorium>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

for liquid in liquids {
    mods.jei.JEI.removeAndHide(liquid);
}

