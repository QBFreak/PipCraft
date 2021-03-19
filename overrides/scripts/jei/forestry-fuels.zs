/* jei.forestry-fuels.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Forestry Fuels from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing duplicate Forestry Fuels and associated items and recipes from JEI");

// List of items to remove
var items as IItemStack[] = [
    <forestry:charcoal>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

