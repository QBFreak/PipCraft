/* jei.forestry-gears.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Forestry Gears from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Forestry Gears and associated recipes from JEI");

// List of gears to remove
var gears as IItemStack[] = [
    <forestry:gear_copper>,
    <forestry:gear_bronze>,
    <forestry:gear_tin>
];

// Do it!
for gear in gears {
    mods.jei.JEI.removeAndHide(gear);
}

