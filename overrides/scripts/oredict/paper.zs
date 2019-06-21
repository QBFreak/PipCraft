/* oredict.paper.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Add Gravestone's Death Info to the oredict for Paper
 */

scripts.logger.crt.logInfo("Adding Death Notes to the Oredict for Paper");

val paper = <ore:paper>;
paper.add(<gravestone:death_info>);

