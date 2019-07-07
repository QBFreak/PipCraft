/* chisel.futura.zs v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Change the recipe for the Chisel Futura block to be more accessible
 */

scripts.logger.crt.logInfo("Tweaking recipe for Chisel Futura block");

recipes.remove(<chisel:futura>);
recipes.addShaped(<chisel:futura> * 16, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:blockRedstone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
