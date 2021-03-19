/* jei.forestry-metals.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Forestry Metals from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Forestry Metals and associated items and recipes from JEI");

// List of items to remove
var items as IItemStack[] = [
    <forestry:resources:1>,
    <forestry:ingot_copper>,
    <forestry:resource_storage:1>,
    <forestry:gear_copper>,
    <forestry:crated.ingotcopper>,
    <forestry:resources:2>,
    <forestry:ingot_tin>,
    <forestry:resource_storage:2>,
    <forestry:gear_tin>,
    <forestry:crated.ingottin>,
    <forestry:ingot_bronze>,
    <forestry:resource_storage:3>,
    <forestry:gear_bronze>,
    <forestry:crated.ingotbronze>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

