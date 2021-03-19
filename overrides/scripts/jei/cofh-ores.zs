/* jei.cofh-ores.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove CofH ores from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing CofH (Thermal) Ores from JEI");

// List of items to remove
var items as IItemStack[] = [
    <thermalfoundation:ore:0>,
    <thermalfoundation:ore:1>,
    <thermalfoundation:ore:2>,
    <thermalfoundation:ore:3>,
    <thermalfoundation:ore:4>,
    <thermalfoundation:ore:5>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

