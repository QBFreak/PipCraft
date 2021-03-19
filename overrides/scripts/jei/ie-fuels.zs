/* jei.ie-fuels.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Immersive Engineering Coal Coke from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Immersive Engineering Coal Coke from JEI");

// List of items to remove
var items as IItemStack[] = [
    // Coal coke
    <immersiveengineering:material:6>,
    <immersiveengineering:stone_decoration:3>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

