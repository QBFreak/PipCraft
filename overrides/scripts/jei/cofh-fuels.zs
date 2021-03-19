/* jei.cofh-fuels.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove CofH fuels from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing CofH (Thermal) Fuels from JEI");

// List of items to remove
var items as IItemStack[] = [
    // Block of Coal Coke
    <thermalfoundation:storage_resource:1>,
    // Coal Coke item
    <thermalfoundation:material:802>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

