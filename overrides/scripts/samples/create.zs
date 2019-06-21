/* vim: setlocal ft=cpp: */
#loader contenttweaker

/* samples.create.zs - v1.0
 *  Author:  QBFreak
 *  License: GNU GPL v3.0
 *
 *  Create custom Geolosys samples for Tinkers' Construct Cobalt Ore and
 *   Ardite Ore using ContentTweaker. The model supports two-layer textures
 *   such as those used by the Tinkers' Construct ores. The model overlays the
 *   ore texture on top of the minecraft:blocks/stone texture to produce the
 *   final product.
 *
 *  Todo:
 *  - Perform (item) drop when block underneath is broken (this is how Geolosys
 *      samples behave). `sample.onBlockBreak()` seems like a good spot for
 *      this. I'm just not sure how to trigger the drop.
 */

// Import all the things we're going to need
import crafttweaker.creativetabs.ICreativeTab;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IBlockAccess;

import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

/* samples[] - An associative array of name/drops to add
 *  Don't add samples here. Call addSample() from another script
 *  Once you're done populating the list, call createSamples()
 */

static samples as IItemStack[string] = {};


/*
 * subString() returns the remainder of `input`, removing `index` characters
 */

function subString(input as string, index as int) as string{
    var returner as string = "";

    for i in index to (input.length){
        returner ~= input[i];
    }
 
    return returner;
}


/*
 * createSample() generates the block for a given sample
 */

function createSample(sampleName as string) as void {
    if (sampleName == "") {
        scripts.logger.cot.logError("Error creating sample, no name specified.");
        return;
    }

    scripts.logger.cot.logInfo("Creating sample " + sampleName);
    var sample as Block = VanillaFactory.createBlock("sample_" + sampleName, <blockmaterial:ground>);
    sample.axisAlignedBB = AxisAlignedBB.create(0.2, 0.0, 0.2, 0.8, 0.25, 0.8);
    sample.blockHardness = 0.125;
    sample.blockLayer = "CUTOUT_MIPPED";
    sample.blockResistance = 2.0;
    sample.blockSoundType = <soundtype:ground>;
    sample.creativeTab = <creativetab:buildingBlocks>;
    sample.fullBlock = false;
    sample.gravity = true;
    sample.lightOpacity = 0;
    sample.setToolLevel(0);

    sample.setDropHandler(function(drops as ItemList, world as IBlockAccess, position as IBlockPos, state as BlockState, fortune as int) {
        /*
         * This unnamed function is our IBlockDropHandler. It runs each time the
         *  block is ready to perform the drop.
         */

        // Why are we doing this (apparently) silly string manipulation nonsense?
        //  Because sampleName from createSample() was out of the current scope.
        var prefix as string = "contenttweaker:sample_";
        var sampleName as string = state.getBlock().definition.id;

        // Sanity check! A healthy mistrust of data quality keeps the fatal errors down...
        if (sampleName.length <= prefix.length) {
            scripts.logger.cot.logError("sampleName length too short (" + sampleName.length + ") for string '" + sampleName + "'");
            return;
        }

        // Cut down the block ID to get the sample name
        sampleName = subString(sampleName, prefix.length);

        // Don't want to drop a new sample when it is mined, only the new drop
        drops.clear();

        // Look up the IItemStack and add it as a drop
        drops.add(samples[sampleName]);

        return;
    });

    // Woo! Register that puppy!
    sample.register();
}


/*
 * addSample() Adds a sample to the list of samples to be generated
 */

function addSample(sampleName as string, drop as IItemStack) as void {
    if (sampleName == "") {
        scripts.logger.cot.logError("Error creating sample, no name specified.");
        return;
    }
    samples[sampleName] = drop;
}


/*
 * createSamples() Creates all of the samples that have been queued for generation
 */

function createSamples() {
    for sampleName, drop in samples {
        createSample(sampleName);
    }
}

