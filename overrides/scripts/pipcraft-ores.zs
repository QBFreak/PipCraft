/* pipcraft-ores.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Populate ores for Geolosys world gen
 *
 *   Because the samples were created by ContentTweaker, they don't yet exist
 *   when Geolosys loads geolosys.json. As a result we have to use crafttweaker
 *   to add them. The same timing issue arises with Tinkers' ores.
 *
 */

import mods.geolosys.ores;
import mods.geolosys.stones;
import crafttweaker.block.IBlockState;

/**
 * addOre() - A CraftTweaker function to wrap the creation of a Deposit
 *  See https://github.com/oitsjustjose/Geolosys/blob/master/src/main/java/com/oitsjustjose/geolosys/compat/crafttweaker/CraftTweakerOres.java
 *
 *  addOre(oreBlock as IBlockState, sampleBlock as IBlockState, yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[])
 *  addOre(oreBlock as IBlockState, sampleBlock as IBlockState, yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], blockStateMatchers as IBlockState[])
 *  addOre(oreBlock as IBlockState, sampleBlock as IBlockState, yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], biomes as string[], isWhitelist as boolean)
 *  addOre(oreBlock as IBlockState, sampleBlock as IBlockState, yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], biomes as string[], isWhitelist as boolean, blockStateMatchers as IBlockState[])
 *  addOre(oreBlocks as IBlockState[], oreBlockChances as int[], sampleBlocks as IBlockState[], sampleBlockChances as int[], yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[])
 *  addOre(oreBlocks as IBlockState[], oreBlockChances as int[], sampleBlocks as IBlockState[], sampleBlockChances as int[], yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], blockStateMatchers as IBlockState[])
 *  addOre(oreBlocks as IBlockState[], oreBlockChances as int[], sampleBlocks as IBlockState[], sampleBlockChances as int[], yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], biomes as String[], isWhitelist as boolean)
 *  addOre(oreBlocks as IBlockState[], oreBlockChances as int[], sampleBlocks as IBlockState[], sampleBlockChances as int[], yMin as int, yMax as int, size as int, chance as int, density as float, dimBlacklist as int[], biomes as String[], isWhitelist as boolean, blockStateMatchers as IBlockState[])
 * 
 * @param oreBlock           The Blockstate of the ore to be placed.
 * @param sampleBlock        The blockstate of the sample to be placed to represent the oreBlock
 * @param oreBlocks          The list of Blockstates of the ores to be placed.
 * @param oreBlockChances    The list of percentages that each oreBlock has to gnenerate
 * @param sampleBlocks       The blockstates of the samples to be placed to represent the oreBlocks
 * @param sampleBlockChances The list of percentages that each sampleBlock has to gnenerate
 * @param yMin               The minimum Y level this deposit should be found
 * @param yMax               The maximum Y level this deposit should be found
 * @param size               The approximate size of this deposit
 * @param chance             The relative chance of this deposit's occurance in the world
 * @param density            The density of the pluton; 1.0 represents nothing but ore, 0.0 represents nothing but original contents.
 * @param dimBlacklist       A blacklist of dimension IDs which the deposit may not appear in
 * @param blockStateMatchers An array of Blockstates which the deposit can replace during generation
 * @param biomes             A list of strings which represent the Biome registry names (from /ct biomes)
 * @param isWhitelist        A boolean value describing whether or not the biomes list is a whitelist or not.
 *
 */

scripts.logger.crt.logInfo("Adding ores to Geolosys");

// Cobalt and Ardite are now available in the overworld instead of the Nether
mods.geolosys.ores.addOre(<blockstate:tconstruct:ore:type=cobalt>, <blockstate:contenttweaker:sample_cobalt>, 8, 78, 256, 8, 1, [-1, 1]);
mods.geolosys.ores.addOre(<blockstate:tconstruct:ore:type=ardite>, <blockstate:contenttweaker:sample_ardite>, 8, 78, 256, 8, 1, [-1, 1]);

// We add clay as an ore instead of a stone so that we get surface samples
mods.geolosys.ores.addOre(<blockstate:minecraft:clay>, <blockstate:contenttweaker:sample_clay>, 2, 70, 160, 10, 1, [-1, 1]);

// Some mod ores that need surface samples
mods.geolosys.ores.addOre(<blockstate:forestry:resources:resource=apatite>, <blockstate:contenttweaker:sample_apatite>, 8, 78, 256, 8, 1, [-1, 1]);
mods.geolosys.ores.addOre(<blockstate:thermalfoundation:ore_fluid:type=redstone>, <blockstate:contenttweaker:sample_destabilized_redstone>, 8, 78, 256, 8, 1, [-1, 1]);


/**
 * addstone() - A CraftTweaker function to wrap the creation of a stone Deposit
 *  See https://github.com/oitsjustjose/Geolosys/blob/master/src/main/java/com/oitsjustjose/geolosys/compat/crafttweaker/CraftTweakerStones.java
 *
 *  addStone(stoneBlock as IBlockState, yMin as int, yMax as int, chance as int, size as int, dimBlacklist as int[])
*/


