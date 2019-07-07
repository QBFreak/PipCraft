/* bibliocraft.clipboard.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Add recipe to craft Bibliocraft Clipboard from Bibliocraft Clipboard, providing a quick shortcut to clear a clipboard
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

scripts.logger.crt.logInfo("Adding convenience recipe for clearing Bibliocraft Clipboard");

recipes.addShapeless(<bibliocraft:biblioclipboard>, [<bibliocraft:biblioclipboard>]);

