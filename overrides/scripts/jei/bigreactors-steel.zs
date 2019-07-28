/* jei.bigreactors-steel.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Big Reactors Steel from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Big Reactors Steel and associated recipes from JEI");

// List of gears to remove
var steel_items as IItemStack[] = [
    <bigreactors:ingotsteel>,
    <bigreactors:duststeel>,
    <bigreactors:blocksteel>
];

// Do it!
for steel in steel_items {
    mods.jei.JEI.removeAndHide(steel);
}

