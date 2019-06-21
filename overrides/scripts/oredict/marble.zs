/* oredict.marble.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Add the various Marble blocks to the Ore Dictionary with a 'block' prefix
 *  so that the Industrial Foregoing 'Ore Dictionary Converter' can process them
 *  (It is limited to "ore", "ingot", "nugget", "gem", "dust", "block", "gear",
 *    "plate")
 *  see https://github.com/Buuz135/Industrial-Foregoing/blob/e51e3fd24648e60bcbe80742f08e45666de25405/src/main/java/com/buuz135/industrial/tile/misc/OreDictionaryConverterTile.java#L24
 */

// DISABLE THIS SCRIPT - marble is disabled in Quark right now
#norun

scripts.logger.crt.logInfo("Adding marbles to the Oredict");

val marble = <ore:blockMarble>;
marble.add(<quark:marble>);
marble.add(<chisel:marble2:7>);

