/* vim: setlocal ft=cpp: */
#loader contenttweaker
#priority -100

/* pipcraft-samples.zs - v1.0
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Create custom Geolosys samples for additional ores using ContentTweaker.
 */

// Import all the things we're going to need
import crafttweaker.item.IItemStack;

/* samples[] - An associative array of name/drops to add
 *  Additional samples can be created simply by adding a new element to the
 *   array and creating a corresponding blockstate JSON to specify the textures
 *
 * Why are we using the Item Bracket Handler? (<item:>)
 *  See https://github.com/The-Acronym-Coders/ContentTweaker/issues/165#issuecomment-451653244
 *
 * Why are we `static samples as IItemStack[string] = {}` when the example is
 *  `samples = {} as IItemStack[string]` ? Because in the latter `samples` is
 *  type Any. If you used `var` instead of `static` this wouldn't be an issue,
 *  casting would take care of it. But once we declare something static, it
 *  can't be changed, and the cast fails. IMO the type should be on the left
 *  side of the assignment operator anyway...
 */

static samples as IItemStack[string] = {
    cobalt : <item:tconstruct:ore:0>,
    ardite : <item:tconstruct:ore:1>,
    clay   : <item:minecraft:clay_ball>,
    apatite : <item:forestry:apatite>,
    destabilized_redstone : <item:thermalfoundation:material:893>
};


scripts.logger.cot.logInfo("Creating Geolosys samples");

// Loop through the associative array samples[] and create a sample for each element
for sampleName, drop in samples {
    scripts.samples.create.addSample(sampleName, drop);
}

scripts.samples.create.createSamples();

