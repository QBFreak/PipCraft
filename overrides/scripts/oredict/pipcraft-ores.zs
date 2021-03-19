/* oredict.pipcraft-ores.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Sort out any oredict discrepancies with Geolosys and other mods in the pack
 */

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

scripts.logger.crt.logInfo("Sorting out Oredict entries for mod ores");

function registerAllItemsInAllDicts(items as IItemStack[], dicts as IOreDictEntry[]) {
    for dict in dicts {
        for item in items {
            dict.add(item);
        }
    }
}

var coalOres as IItemStack[] = [
    <minecraft:coal_ore>,
    <geolosys:ore_vanilla>
];

var coalOreOreDictEntries as IOreDictEntry[] = [
    <ore:oreCoal>,
    <ore:oreBlockCoal>,
    <ore:depositOreCoal>
];

registerAllItemsInAllDicts(coalOres, coalOreOreDictEntries);


var cokeBlocks as IItemStack[] = [
    <thermalfoundation:storage_resource:1>,
    <railcraft:generic:6>,
    <immersiveengineering:stone_decoration:3>,
    <chisel:block_coal_coke2:1>
];

var cokeBlockOreDictEntries as IOreDictEntry[] = [
    <ore:blockFuelCoke>,
    <ore:blockCoke>,
    <ore:blockCoalCoke>
];

registerAllItemsInAllDicts(cokeBlocks, cokeBlockOreDictEntries);

