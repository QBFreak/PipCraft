/* jei.cofh-mithril.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove CofH "Mana Infused" (Mithril) items from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

scripts.logger.crt.logInfo("Removing CofH (Thermal) Mana Infused items from JEI");

// List of items to remove
var items as IItemStack[] = [
    <thermalfoundation:ore:8>,
    <thermalfoundation:storage:8>,
    <thermalfoundation:glass:8>,
    <thermalfoundation:coin:72>,
    <thermalfoundation:material:72>,
    <thermalfoundation:material:136>,
    <thermalfoundation:material:200>,
    <thermalfoundation:material:264>,
    <thermalfoundation:material:328>,
    <thermalfoundation:material:1028>,
    <thermalfoundation:fluid_mana>
];

// List of fluids to remove
var liquids as ILiquidStack[] = [
    <liquid:mana>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

for liquid in liquids {
    mods.jei.JEI.removeAndHide(liquid);
}

