import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded mekanism contenttweaker

    # Removed Recipes
    var toDelete as IItemStack[] = [
        <mekanism:transmitter>,
        <mekanism:controlcircuit>,
        <mekanism:machineblock:8>,
        <mekanism:basicblock:8>,
        <mekanism:controlcircuit:1>,
        <mekanism:controlcircuit:2>,
        <mekanism:controlcircuit:3>,
        <mekanism:atomicdisassembler>,
        <mekanism:machineblock:2>, //combiner
        <mekanismgenerators:solarpanel>,
        <mekanismgenerators:generator:5>,
        <mekanism:basicblock2:5>,
        <mekanism:teleportationcore>,
        <mekanism:machineblock2:13>,
        <mekanism:freerunners>,
        <mekanism:portableteleporter>,
        <mekanism:energytablet>,
        <mekanism:jetpack>,
        <mekanism:armoredjetpack>,
        <enderio:item_material:6>,
        <mekanism:machineblock2:5>,
        <mekanism:machineblock>
    ];

    for item in toDelete {
        recipes.remove(item);
    }

    rh(<mekanism:controlcircuit>);


    recipes.addShapedMirrored("Energy Tablet", <mekanism:energytablet>,
    [[<enderio:item_alloy_ingot:3>, <ore:plateSteel>, <enderio:item_alloy_ingot:3>],
    [<mekanism:enrichedalloy>, <ore:ingotRedAlloy>, <mekanism:enrichedalloy>],
    [<enderio:item_alloy_ingot:3>, <ore:plateSteel>, <enderio:item_alloy_ingot:3>]]);

    recipes.addShapedMirrored("Basic Universal Cable", <mekanism:transmitter>.withTag({tier: 0}) * 4,
    [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:ingotElectrotineAlloy>, <ore:ingotRedAlloy>, <ore:ingotElectrotineAlloy>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

    recipes.addShapedMirrored("Basic Universal Cable", <mekanism:transmitter>.withTag({tier: 0}) * 4,
    [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:ingotElectrotineAlloy>, <ore:ingotRedAlloy>, <ore:ingotElectrotineAlloy>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

    recipes.addShapedMirrored("Metallurgic Infuser", <mekanism:machineblock:8>,
    [[<ore:plateSteel>, <ore:gearInvar>, <ore:plateSteel>],
    [<ore:ingotRedAlloy>, <immersiveengineering:metal_decoration0:5>, <ore:ingotRedAlloy>],
    [<ore:plateSteel>, <ore:gearInvar>, <ore:plateSteel>]]);

    recipes.addShapedMirrored("Steel Casing", <mekanism:basicblock:8>,
    [[<ore:scaffoldingSteel>, <ore:plateSteel>, <ore:scaffoldingSteel>],
    [<immersiveengineering:material:9>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:material:9>],
    [<ore:scaffoldingSteel>, <ore:plateSteel>, <ore:scaffoldingSteel>]]);

    # replaced basic processor with 2 more Enriched alloy
    recipes.addShapedMirrored("Advanced Control Circuit", <mekanism:controlcircuit:1>,
    [[<ore:ingotRedAlloy>, <ore:itemEnrichedAlloy>, <ore:ingotRedAlloy>],
    [<ore:itemEnrichedAlloy>, <ore:circuitBasic>, <ore:itemEnrichedAlloy>],
    [<ore:ingotRedAlloy>, <ore:itemEnrichedAlloy>, <ore:ingotRedAlloy>]]);

    # replace processor:4 with calculation processor
    recipes.addShapedMirrored("Elite Control Circuit", <mekanism:controlcircuit:2>,
    [[<ore:ingotPulsatingIron>, <refinedstorage:processor:4>, <ore:ingotPulsatingIron>],
    [<ore:alloyElite>, <ore:circuitAdvanced>, <ore:alloyElite>],
    [<ore:ingotPulsatingIron>, <refinedstorage:processor:4>, <ore:ingotPulsatingIron>]]);

    # replace processor:5 with Engineering processor
    recipes.addShapedMirrored("Ultimate Control Circuit", <mekanism:controlcircuit:3>,
    [[<ore:ingotVibrantAlloy>, <refinedstorage:processor:5>, <ore:ingotVibrantAlloy>],
    [<ore:alloyUltimate>, <ore:circuitElite>, <ore:alloyUltimate>],
    [<ore:ingotVibrantAlloy>, <refinedstorage:processor:5>, <ore:ingotVibrantAlloy>]]);

    recipes.addShapedMirrored("Atomic Disassembler", <mekanism:atomicdisassembler>,
    [[<ore:itemEnrichedAlloy>, <mekanism:energytablet>.anyDamage(), <ore:itemEnrichedAlloy>],
    [<ore:alloyElite>, <ore:alloyUltimate>, <ore:alloyElite>],
    [<ore:ingotRefinedObsidian>, <ore:itemInfinityRod>, <ore:ingotRefinedObsidian>]]);

    recipes.addShapedMirrored("Combiner",<mekanism:machineblock:2>,
    [[<ore:alloyElite>, <ore:circuitBasic>, <ore:alloyElite>],
    [<minecraft:sticky_piston>, <mekanism:basicblock:8>, <minecraft:sticky_piston>],
    [<ore:alloyElite>, <ore:circuitBasic>, <ore:alloyElite>]]);

    recipes.addShapedMirrored("Solar Panel", <mekanismgenerators:solarpanel>,
    [[<ore:waferSolar>, <ore:waferSolar>, <ore:waferSolar>],
    [<ore:ingotRedAlloy>, <ore:itemEnrichedAlloy>, <ore:ingotRedAlloy>],
    [<ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>]]);

    recipes.addShapedMirrored("Advanced Solar Generator", <mekanismgenerators:generator:5>,
    [[<mekanismgenerators:generator:1>, <ore:alloyElite>, <mekanismgenerators:generator:1>],
    [<mekanismgenerators:generator:1>, <galacticraftcore:steel_pole>, <mekanismgenerators:generator:1>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

    recipes.addShapedMirrored("Superheating Element", <mekanism:basicblock2:5>,
    [[<ore:plateConstantan>, <ore:dustEnergetic>, <ore:plateConstantan>],
    [<ore:dustEnergetic>, <mekanism:basicblock:8>, <ore:dustEnergetic>],
    [<ore:plateConstantan>, <ore:dustEnergetic>, <ore:plateConstantan>]]);

    recipes.addShapedMirrored("Teleportation Core", <mekanism:teleportationcore>,
    [[<thermalfoundation:material:167>, <thermalfoundation:material:1028>, <thermalfoundation:material:167>],
    [<mekanism:atomicalloy>, <enderio:item_material:16>, <mekanism:atomicalloy>],
    [<thermalfoundation:material:167>, <thermalfoundation:material:1028>, <thermalfoundation:material:167>]]);
    
    recipes.addShapedMirrored("Laser", <mekanism:machineblock2:13>,
    [[<mekanism:atomicalloy>, <enderio:item_alloy_ingot>, null],
    [<mekanism:energycube>.withTag({tier: 0}), <mekanism:basicblock:8>, <industrialforegoing:laser_lens>],
    [<mekanism:atomicalloy>, <enderio:item_alloy_ingot>, null]]);

    recipes.addShapedMirrored("Electric Bow", <mekanism:electricbow>,
    [[null, <mekanism:reinforcedalloy>, <botania:manaresource:16>],
    [<mekanism:energytablet>.anyDamage(), null, <botania:manaresource:16>],
    [null, <mekanism:reinforcedalloy>, <botania:manaresource:16>]]);

    recipes.addShapedMirrored("Free Runners", <mekanism:freerunners>,
    [[<ore:circuitBasic>, <minecraft:iron_boots>, <ore:circuitBasic>],
    [<mekanism:energytablet>.anyDamage(), null, <mekanism:energytablet>.anyDamage()],
    [<mekanism:reinforcedalloy>, null, <mekanism:reinforcedalloy>]]);

    recipes.addShapedMirrored("Portable Teleporter", <mekanism:portableteleporter>.withTag({energyStored: 0}),
    [[<ore:paneGlass>, <mekanism:teleportationcore>, <ore:paneGlass>],
    [<ore:circuitAdvanced>, <ore:paneGlass>, <ore:circuitAdvanced>],
    [null, <mekanism:energytablet>, null]]);
    
    recipes.addShapedMirrored("Jetpack", <mekanism:jetpack>,
    [[<ore:circuitAdvanced>, <ore:plateSteel>, <ore:circuitAdvanced>],
    [<enderio:item_material:6>, <mekanism:gastank>.withTag({tier: 1}), <enderio:item_material:6>],
    [null, <immersiveintelligence:lighter>, null]]);

    recipes.addShapedMirrored("Armored Jetpack", <mekanism:armoredjetpack>,
    [[<mekanism:reinforcedalloy>, <ore:plateBronze>, <mekanism:reinforcedalloy>],
    [<ore:plateBronze>, <enderio:block_alloy:6>, <ore:plateBronze>],
    [null, <mekanism:jetpack>, null]]);
    
    recipes.addShapedMirrored("Precision Sawmill", <mekanism:machineblock2:5>,
    [[<ore:ingotIron>, <thermalfoundation:material:657>, <ore:ingotIron>],
    [<mekanism:enrichedalloy>, <mekanism:basicblock:8>, <mekanism:enrichedalloy>],
    [<ore:circuitBasic>, <ore:gearSteel>, <ore:circuitBasic>]]);

    recipes.addShapedMirrored("Enrichment Chamber", <mekanism:machineblock>,
    [[<ore:plateSteel>, <thermalfoundation:material:512>, <ore:plateSteel>],
    [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
    [<mekanism:enrichedalloy>, <ore:gearConstantan>, <mekanism:enrichedalloy>]]);



    // Coil recipes
    
    mods.mekanism.infuser.addRecipe("REDSTONE", 25, <thermalfoundation:material:322>, <thermalfoundation:material:514>);    // Transmission
    mods.mekanism.infuser.addRecipe("REDSTONE", 25, <thermalfoundation:material:33>, <thermalfoundation:material:513>);     // Reception
    mods.mekanism.infuser.addRecipe("REDSTONE", 25, <thermalfoundation:material:353>, <thermalfoundation:material:515>);    // Conductance
    
    // Processor base + material = raw processor

    mods.mekanism.combiner.addRecipe(<contenttweaker:processor_base>, <ore:ingotIron>, <refinedstorage:processor>);                 // basic
    mods.mekanism.combiner.addRecipe(<contenttweaker:processor_base>, <ore:ingotGold>, <refinedstorage:processor:1>);               // improved
    mods.mekanism.combiner.addRecipe(<contenttweaker:processor_base>, <ore:gemDiamond>, <refinedstorage:processor:2>);              // advanced
    mods.mekanism.combiner.addRecipe(<contenttweaker:processor_base>, <ore:gemEmerald>, <contenttweaker:raw_crafting_processor>);   // crafting 

    // Raw processor + redstone = processor *yay*

    mods.mekanism.infuser.addRecipe("REDSTONE", 10, <refinedstorage:processor>, <refinedstorage:processor:3>);                       // basic
    mods.mekanism.infuser.addRecipe("REDSTONE", 20, <refinedstorage:processor:1>, <refinedstorage:processor:4>);                     // improved
    mods.mekanism.infuser.addRecipe("REDSTONE", 50, <contenttweaker:raw_crafting_processor>, <contenttweaker:crafting_processor>);   // crafting
    mods.mekanism.infuser.addRecipe("REDSTONE", 50, <refinedstorage:processor:2>, <refinedstorage:processor:5>);                     // advanced
    

    // Construction/Deconstruction core

    mods.mekanism.combiner.addRecipe(<refinedstorage:processor:4> * 3, <enderio:block_holier_fog>, <refinedstorage:core>);
    mods.mekanism.combiner.addRecipe(<refinedstorage:processor:4> * 3, <enderio:block_infinity_fog>, <refinedstorage:core:1>);

    mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);

    print("Arcana Industrialis: mekanism script loaded.");