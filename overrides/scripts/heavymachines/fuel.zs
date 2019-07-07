/* heavymachines.fuel.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Create a recipe for the Thermal Expansion Fluid Transposer to fill an empty Heavy Machines Fuel Can with 1B of Diesel or Biodiesel
 *
 */

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.thermalexpansion.Transposer;


scripts.logger.crt.logInfo("Adding Heavy Machinery fuel recipes to Fluid Transposer");

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
mods.thermalexpansion.Transposer.addFillRecipe(<machinemod:fuelcan:0>, <machinemod:fuelcan:1000>, <liquid:diesel> * 1000, 400);
mods.thermalexpansion.Transposer.addFillRecipe(<machinemod:fuelcan:0>, <machinemod:fuelcan:1000>, <liquid:biodiesel> * 1000, 400);

// TODO: Add recipes for other 999 damage states of fuel can, hidden from JEI
