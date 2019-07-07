/* jei.heavymachines.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove duplicated TechStack's Heavy Machinery Mod items from JEI
 *   The mod adds a number of things that are already added by other mods, in the oredict, or just plain unfinished
 *   So lets clean up a little and clear them out. Life is cluttered enough as it is.
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

scripts.logger.crt.logInfo("Removing unnecessary things and associated recipes for Heavy Machinery from JEI");

// List of items to remove
var items as IItemStack[] = [
    // Unused
    <machinemod:steelblock>,
    <machinemod:carbondust>,

    // Dupes of other mods
    <machinemod:irondust>,
    <machinemod:golddust>,
    <machinemod:woodengear>,
    <machinemod:stonegear>,
    <machinemod:irongear>,
    <machinemod:steeldust>,
    <machinemod:steelingot>,
    <machinemod:aluminumingot>,

    // Unimplemented
    <machinemod:machineasphaltmixer>,
    <machinemod:machineoil>,
    <machinemod:machinefactory>,
];

var liquids as ILiquidStack[] = [
    // Don't remove diesel, IE adds it and it would be most annoying if we removed it
    // <liquid:diesel>,

    // Unimplemented
    <liquid:bitumen>,
    <liquid:naphtha>,
    <liquid:jetfuel>
];


// Enough messing around, buildings lists, lets REMOVE some stuff!

for item   in items   { mods.jei.JEI.removeAndHide(item); }
for liquid in liquids { mods.jei.JEI.hide(liquid); }

