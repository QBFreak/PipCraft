/* jei.ie-metals.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Remove Immersive Engineering metals and related from JEI
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

scripts.logger.crt.logInfo("Removing Immersive Engineering Metals from JEI");

// List of items to remove
var items as IItemStack[] = [
    // Ingots
    <immersiveengineering:metal:0>,
    <immersiveengineering:metal:1>,
    <immersiveengineering:metal:2>,
    <immersiveengineering:metal:3>,
    <immersiveengineering:metal:4>,
    <immersiveengineering:metal:6>,
    <immersiveengineering:metal:7>,
    <immersiveengineering:metal:8>,

    // Dusts
    <immersiveengineering:metal:9>,
    <immersiveengineering:metal:10>,
    <immersiveengineering:metal:11>,
    <immersiveengineering:metal:12>,
    <immersiveengineering:metal:13>,
    <immersiveengineering:metal:15>,
    <immersiveengineering:metal:16>,
    <immersiveengineering:metal:17>,
    <immersiveengineering:metal:18>,
    <immersiveengineering:metal:19>,

    // Nuggets
    <immersiveengineering:metal:20>,
    <immersiveengineering:metal:21>,
    <immersiveengineering:metal:22>,
    <immersiveengineering:metal:23>,
    <immersiveengineering:metal:24>,
    <immersiveengineering:metal:26>,
    <immersiveengineering:metal:27>,
    <immersiveengineering:metal:28>,
    <immersiveengineering:metal:29>,

    // Plates
    <immersiveengineering:metal:30>,
    <immersiveengineering:metal:31>,
    <immersiveengineering:metal:32>,
    <immersiveengineering:metal:33>,
    <immersiveengineering:metal:34>,
    <immersiveengineering:metal:36>,
    <immersiveengineering:metal:37>,
    <immersiveengineering:metal:38>,
    <immersiveengineering:metal:39>,
    <immersiveengineering:metal:40>,

    // Blocks
    <immersiveengineering:storage:0>,
    <immersiveengineering:storage:1>,
    <immersiveengineering:storage:2>,
    <immersiveengineering:storage:3>,
    <immersiveengineering:storage:4>,
    <immersiveengineering:storage:6>,
    <immersiveengineering:storage:7>,
    <immersiveengineering:storage:8>
];

// Do it!
for item in items {
    mods.jei.JEI.removeAndHide(item);
}

