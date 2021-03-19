/* jei.aa-fuels.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Actually Additions Fuels from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing duplicate Actually Additions Fuels and associated items and recipes from JEI");

// List of items to remove
var items as IItemStack[] = [
    <actuallyadditions:block_misc:5>,
    <actuallyadditions:item_dust:6>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

