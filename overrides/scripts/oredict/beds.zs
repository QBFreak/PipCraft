/* oredict.beds.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Add dyable (vanilla) beds to an oredict so we can make a recipe for them
 */

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

scripts.logger.crt.logInfo("Adding dyable beds to Ore Dictionary bedDyable");

function registerAllItemsInAllDicts(items as IItemStack[], dicts as IOreDictEntry[]) {
    for dict in dicts {
        for item in items {
            dict.add(item);
        }
    }
}

var bedsDyable as IItemStack[] = [
    <minecraft:bed:0>,
    <minecraft:bed:1>,
    <minecraft:bed:2>,
    <minecraft:bed:3>,
    <minecraft:bed:4>,
    <minecraft:bed:5>,
    <minecraft:bed:6>,
    <minecraft:bed:7>,
    <minecraft:bed:8>,
    <minecraft:bed:9>,
    <minecraft:bed:10>,
    <minecraft:bed:11>,
    <minecraft:bed:12>,
    <minecraft:bed:13>,
    <minecraft:bed:14>,
    <minecraft:bed:15>
];

var bedOreDictEntries as IOreDictEntry[] = [
    <ore:bedDyable>
];

registerAllItemsInAllDicts(bedsDyable, bedOreDictEntries);

