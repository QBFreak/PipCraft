/* jei.ie-ores.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Immersive Engineering ores from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Immersive Engineering Ores from JEI");

// List of items to remove
var items as IItemStack[] = [
    <immersiveengineering:ore:0>,
    <immersiveengineering:ore:1>,
    <immersiveengineering:ore:2>,
    <immersiveengineering:ore:3>,
    <immersiveengineering:ore:4>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

