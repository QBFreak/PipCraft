/* oredict.pipcraft-ores.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Sort out any oredict discrepancies with Geolosys and other mods in the pack
 */

// DISABLE THIS SCRIPT - Pack dev, this script is a later TODO
#norun

scripts.logger.crt.logInfo("Sorting out Oredict entries for mod ores");

// Forge, or somebody, sets Vanilla coal to oreCoal, but Geolosys sets it's own coal to oreBlockCoal
// Here we adjust both

val oreCoal = <ore:oreCoal>;
oreCoal.add(<minecraft:coal_ore>);
oreCoal.add(<geolosys:ore_vanilla>);

val oreBlockCoal = <ore:oreBlockCoal>;
oreBlockCoal.add(<minecraft:coal_ore>);
oreBlockCoal.add(<geolosys:ore_vanilla>);

val depositOreCoal = <ore:depositOreCoal>;
depositOreCoal.add(<minecraft:coal_ore>);
depositOreCoal.add(<geolosys:ore_vanilla>);


