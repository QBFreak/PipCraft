/* jei.cofh-hardenedglass.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove CofH Hardened Glass from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing CofH (Thermal) Hardened Glass from JEI");

// List of items to remove
var items as IItemStack[] = [
    <thermalfoundation:glass:0>,
    <thermalfoundation:glass:1>,
    <thermalfoundation:glass:2>,
    <thermalfoundation:glass:3>,
    <thermalfoundation:glass:4>,
    <thermalfoundation:glass:5>,
    <thermalfoundation:glass:6>,
    <thermalfoundation:glass:7>,
    <thermalfoundation:glass:8>,
    <thermalfoundation:glass_alloy:0>,
    <thermalfoundation:glass_alloy:1>,
    <thermalfoundation:glass_alloy:2>,
    <thermalfoundation:glass_alloy:3>,
    <thermalfoundation:glass_alloy:4>,
    <thermalfoundation:glass_alloy:5>,
    <thermalfoundation:glass_alloy:6>,
    <thermalfoundation:glass_alloy:7>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

