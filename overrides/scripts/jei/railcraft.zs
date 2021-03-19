/* jei.railcraft.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Railcraft dupes from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Railcraft duplicate items from JEI");

// List of items to remove
var items as IItemStack[] = [
    // Plates
    <railcraft:plate:0>,
    <railcraft:plate:1>,
    <railcraft:plate:2>,
    <railcraft:plate:3>,
    <railcraft:plate:4>,
    <railcraft:plate:5>,
    <railcraft:plate:6>,
    <railcraft:plate:7>,
    <railcraft:plate:8>,
    <railcraft:plate:9>,
    // <railcraft:plate:10>, // Keep zinc
    // <railcraft:plate:11>, // Keep brass

    // Obsidian dust
    <railcraft:dust>,
    
    // Coal/Charcoal dust
    <railcraft:dust:3>,
    <railcraft:dust:5>,    
   
    // Blocks
    <railcraft:metal:0>,
    <railcraft:metal:1>,
    <railcraft:metal:2>,
    <railcraft:metal:3>,
    <railcraft:metal:4>,
    <railcraft:metal:5>,
    <railcraft:metal:6>,
    <railcraft:metal:7>,
    // <railcraft:metal:8>, // Keep zinc
    // <railcraft:metal:9>, // Keep brass

    // Nuggets
    <railcraft:nugget:0>,
    <railcraft:nugget:1>,
    <railcraft:nugget:2>,
    <railcraft:nugget:3>,
    <railcraft:nugget:4>,
    <railcraft:nugget:5>,
    <railcraft:nugget:6>,
    <railcraft:nugget:7>,
    // <railcraft:nugget:8>, // Keep zinc
    // <railcraft:nugget:9>, // Keep brass

    // Gears
    // <railcraft:gear:0>, // Keep brass
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    // <railcraft:gear:3>, // Keep gear bushing
    <railcraft:gear:4>,
    <railcraft:gear:5>,
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

