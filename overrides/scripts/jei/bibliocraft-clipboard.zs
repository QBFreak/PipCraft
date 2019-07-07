/* jei.bibliocraft-clipboard.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Bibliocraft Clipboard Tile Entity from JEI. It's not craftable, and it's just confusing to have two clipboards there
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Bibliocraft Clipboard Tile Entity from JEI");

mods.jei.JEI.removeAndHide(<bibliocraft:clipboard>);

