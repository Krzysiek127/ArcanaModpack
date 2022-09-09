import crafttweaker.item.IItemStack;
#modloaded thermalexpansion


    # Removed recipes

    recipes.removeByRecipeName("thermalexpansion:reservoir_10");
    recipes.removeByRecipeName("thermalexpansion:reservoir_11");
    recipes.removeByRecipeName("thermalexpansion:reservoir_12");
    recipes.removeByRecipeName("thermalexpansion:reservoir_13");
    recipes.removeByRecipeName("thermalexpansion:reservoir_14");

    var toDelete as IItemStack[] = [

        <thermalexpansion:frame>,
        <thermalfoundation:material:24>,
        <thermalfoundation:material:25>,
        <thermalfoundation:material:26>,
        <thermalfoundation:material:27>,
        <thermalfoundation:material:256>,
        <thermalfoundation:material:257>,
        <thermalfoundation:material:258>,
        <thermalfoundation:material:259>,
        <thermalfoundation:material:260>,
        <thermalfoundation:material:261>,
        <thermalfoundation:material:262>,
        <thermalfoundation:material:263>,
        <thermalfoundation:material:264>,
        <thermalfoundation:material:288>,
        <thermalfoundation:material:289>,
        <thermalfoundation:material:290>,
        <thermalfoundation:material:291>,
        <thermalfoundation:material:292>,
        <thermalfoundation:material:293>,
        <thermalfoundation:material:294>,
        <thermalfoundation:material:295>,
        <thermalfoundation:material:512>,
        <thermalfoundation:material:514>,
        <thermalfoundation:material:513>,
        <thermalfoundation:material:515>,
        <thermalfoundation:material:22>,
        <thermalexpansion:tank>,
        <thermalexpansion:machine>,
        <thermalexpansion:machine:7>,
        <thermalexpansion:machine:8>,
        <thermalexpansion:machine:5>,
        <thermalexpansion:machine:1>,
        <thermalexpansion:machine:9>,
        <thermalexpansion:augment:368>,
        <thermalexpansion:augment:337>,
        <thermalexpansion:augment:258>,
        <thermalexpansion:augment:400>,
        <thermalexpansion:augment:128>,
        <thermalexpansion:augment:512>,
        <thermalexpansion:augment:402>,
        <thermalfoundation:material:657>,
        <thermalexpansion:machine:2>,
        <thermalfoundation:upgrade>,
        <thermalfoundation:upgrade:1>,
        <thermalfoundation:upgrade:2>,
        <thermalfoundation:upgrade:3>,
        <thermaldynamics:duct_0>
    ];


    for item in toDelete {
        recipes.remove(item);
    }

    for plank in <ore:plankWood>.items {
	    mods.thermalexpansion.Sawmill.addRecipe(<minecraft:stick> * 6, plank, 1500, <thermalfoundation:material:800>, 25);
    }

    # Recipes
    recipes.addShapedMirrored("Wooden Gear", <thermalfoundation:material:22>,
    [[null, <ore:stickTreatedWood>, null],
    [<ore:stickTreatedWood>, null, <ore:stickTreatedWood>],
    [null, <ore:stickTreatedWood>, null]]);

	recipes.addShapedMirrored("Mana Dust", <thermalfoundation:material:1028>,
    [[<ore:dustAmordrine>, <ore:dustDiamond>, <ore:dustAmordrine>],
    [<ore:dustDiamond>, <ebwizardry:grand_crystal>, <ore:dustDiamond>], 
    [<ore:dustAmordrine>, <ore:dustDiamond>, <ore:dustAmordrine>]]);

    recipes.addShapedMirrored("Machine Frame", <thermalexpansion:frame>,
    [[<ore:alloyElite>, <ore:ingotRefinedObsidian>, <ore:alloyElite>],
    [<engineersdecor:panzerglass_block>, <mekanism:basicblock:8>, <engineersdecor:panzerglass_block>],
    [<ore:alloyElite>, <ore:ingotRefinedObsidian>, <ore:alloyElite>]]);

    recipes.addShapedMirrored("Redstone Servo" , <thermalfoundation:material:512>,
    [[<ore:dustRedstone>, null, <ore:dustRedstone>],
    [null, <ore:plateIron>, null],
    [<ore:dustRedstone>, null, <ore:dustRedstone>]]);

    recipes.addShapedMirrored("Portable Tank", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}),
    [[<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>],
    [<ore:blockGlass>, <galacticraftcore:fluid_tank>, <ore:blockGlass>],
    [<ore:plateCopper>, <thermalfoundation:material:512>, <ore:plateCopper>]]);

    recipes.addShapedMirrored("Fractionating Still", <thermalexpansion:machine:7>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 2, 3, 3, 3, 3] as byte[] as byte[], Level: 0 as byte}),
    [[<ore:plateLumium>, <forestry:still>, <ore:plateLumium>],
    [<ore:gearConstantan>, <thermalexpansion:frame>, <ore:gearConstantan>],
    [<thermalfoundation:material:513>, <ore:gearNickel>, <thermalfoundation:material:514>]]);

    recipes.addShapedMirrored("Compactor", <thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),
    [[<immersiveengineering:metal_decoration0:3>, <minecraft:piston>, <immersiveengineering:metal_decoration0:3>],
    [<ore:plateBronze>, <thermalexpansion:frame>, <ore:plateBronze>],
    [<thermalfoundation:material:513>, <immersiveengineering:mold>, <thermalfoundation:material:513>]]);

    recipes.addShapedMirrored("Pulverizer", <thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),
    [[<ore:gearSteel>, <mekanism:machineblock:3>, <ore:gearSteel>],
    [<astralsorcery:blockmachine:1>, <thermalexpansion:frame>, <astralsorcery:blockmachine:1>],
    [<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]]);

    recipes.addShapedMirrored("Energetic Infuser", <thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),
    [[<ore:dustEnergetic>, <mekanism:energytablet>, <ore:dustEnergetic>],
    [<thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:514>],
    [<immersiveengineering:wirecoil:2>, <thermalfoundation:material:515>, <immersiveengineering:wirecoil:2>]]);
    
    recipes.addShapedMirrored("Saw Blade", <thermalfoundation:material:657>,
    [[null, <ore:plateIron>, null],
    [<ore:plateIron>, <ore:gearIron>, <ore:plateIron>],
    [null, <ore:plateIron>, null]]);

    recipes.addShapedMirrored("Sawmill", <thermalexpansion:machine:2>,
    [[<ore:plateSteel>, <mekanism:machineblock2:5>, <ore:plateSteel>],
    [<thermalfoundation:material:513>, <thermalexpansion:frame>, <thermalfoundation:material:513>],
    [<thermalfoundation:material:291>, <mekanism:reinforcedalloy>, <thermalfoundation:material:291>]]);

    recipes.addShapedMirrored("Redstone Furnace", <thermalexpansion:machine>,
    [[<immersiveengineering:stone_decoration:2>, <galacticraftcore:machine_tiered:4>, <immersiveengineering:stone_decoration:2>],
    [<ore:dustEnergetic>, <thermalexpansion:frame>, <ore:dustEnergetic>],
    [<immersiveengineering:stone_decoration:2>, <thermalfoundation:material:513>, <immersiveengineering:stone_decoration:2>]]);

    recipes.addShapedMirrored("Leadstone Fluxduct", <thermaldynamics:duct_0>,
    [[<ore:plateBasic>, <ore:plateBasic>, <ore:plateBasic>],
    [<ore:ingotRedAlloy>, <ore:fusedGlass>, <ore:ingotRedAlloy>],
    [<ore:plateBasic>, <ore:plateBasic>, <ore:plateBasic>]]);

    recipes.addShapedMirrored("Fluid Transposer", <thermalexpansion:machine:8>,
    [[<ore:plateSilver>, <forestry:squeezer>, <ore:plateSilver>],
    [<mekanism:machineblock2:11>.withTag({tier: 0}), <thermalexpansion:frame>, <mekanism:machineblock2:11>.withTag({tier: 0})],
    [<ore:gearDiamond>, <thermalfoundation:material:513>, <ore:gearDiamond>]]);


    # Augments / Specializations

    recipes.addShapedMirrored("Reflux Column", <thermalexpansion:augment:368>,
    [[<ore:itemBlazeRod>, <ore:gearConstantan>, <ore:itemBlazeRod>],
    [<ore:blockGlassHardened>, <thermalfoundation:material:515>, <ore:blockGlassHardened>],
    [<ore:plateLumium>, <thermalfoundation:material:512>, <ore:plateLumium>]]);

    recipes.addShapedMirrored("Gearworking Die", <thermalexpansion:augment:337>,
    [[<ore:plateInvar>, <ore:gearSteel>, <ore:plateInvar>],
    [<ore:plateLead>, <immersiveengineering:mold:1>, <ore:plateLead>],
    [<thermalfoundation:material:512>, <minecraft:piston>, <thermalfoundation:material:512>]]);

    recipes.addShapedMirrored("Pyrolytic Conversion", <thermalexpansion:augment:258>,
    [[<immersiveengineering:graphite_electrode>, <ore:gearInvar>, <immersiveengineering:graphite_electrode>],
    [<immersiveengineering:stone_decoration>, <thermalfoundation:material:512>, <immersiveengineering:stone_decoration>],
    [<immersiveengineering:stone_decoration:2>, <minecraft:furnace>, <immersiveengineering:stone_decoration:2>]]);

    recipes.addShapedMirrored("Flux Linkage Concetrator", <thermalexpansion:augment:400>,
    [[<ore:plateSilver>, <ore:gearElectrum>, <ore:plateSilver>],
    [<thermalfoundation:material:513>, <immersiveengineering:metal_decoration0:2>, <thermalfoundation:material:514>],
    [<ore:ingotLeadPlatinum>, <thermalfoundation:material:515>, <ore:ingotLeadPlatinum>]]);

    recipes.addShapedMirrored("Auxilary Reception Coil", <thermalexpansion:augment:128>,
    [[<ore:plateGold>, <ore:wireSteel>, <ore:plateGold>],
    [<thermalfoundation:material:513>, <mekanism:speedupgrade>, <thermalfoundation:material:513>],
    [<ore:plateGold>, <ore:wireSteel>, <ore:plateGold>]]);

    recipes.addShapedMirrored("Auxilary Transmition Coil", <thermalexpansion:augment:512>,
    [[<ore:plateSilver>, <ore:wireSteel>, <ore:plateSilver>],
    [<thermalfoundation:material:514>, <mekanism:energyupgrade>, <thermalfoundation:material:514>],
    [<ore:plateSilver>, <ore:wireSteel>, <ore:plateSilver>]]);

    recipes.addShapedMirrored("Parabolic Flux Coupling", <thermalexpansion:augment:402>,
    [[<enderio:item_material:65>, <ore:gearElectrum>, <enderio:item_material:65>],
    [<ore:dustEnergetic>, <thermalexpansion:augment:400>, <ore:dustEnergetic>],
    [<ore:plateSilver>, <thermalfoundation:material:512>, <ore:plateSilver>]]);

    recipes.addShapedMirrored("Hardened Upgrade Kit", <thermalfoundation:upgrade>,
    [[<ore:plateInvar>, <ore:plateBasic>, <ore:plateInvar>],
    [<ore:plateBasic>, <ore:gearSteel>, <ore:plateBasic>],
    [<ore:dustPyrotheum>, <mekanism:speedupgrade>, <ore:dustPyrotheum>]]);

    recipes.addShapedMirrored("Reinforced Upgrade Kit", <thermalfoundation:upgrade:1>,
    [[<ore:plateElectrum>, <galacticraftcore:heavy_plating>, <ore:plateElectrum>],
    [<galacticraftcore:heavy_plating>, <ore:gearInvar>, <galacticraftcore:heavy_plating>],
    [<ore:dustAerotheum>, <thermalfoundation:upgrade>, <ore:dustAerotheum>]]);

    recipes.addShapedMirrored("Signalum Upgrade Kit", <thermalfoundation:upgrade:2>,
    [[<ore:plateLumium>, <ore:plateAdvanced>, <ore:plateLumium>],
    [<ore:plateAdvanced>, <ore:gearElectrum>, <ore:plateAdvanced>],
    [<ore:dustCryotheum>, <thermalfoundation:upgrade:1>, <ore:dustCryotheum>]]);

    recipes.addShapedMirrored("Resonant Upgrade Kit", <thermalfoundation:upgrade:3>,
    [[<ore:plateEnderium>, <galacticraftplanets:item_basic_mars:3>, <ore:plateEnderium>],
    [<galacticraftplanets:item_basic_mars:3>, <ore:gearLumium>, <galacticraftplanets:item_basic_mars:3>],
    [<ore:dustMana>, <thermalfoundation:upgrade:2>, <ore:dustMana>]]);



    # Machine Recipes

    mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);

    mods.thermalexpansion.Refinery.addRecipe(<liquid:fuelium> * 750, null, <liquid:gasoline> * 1000, 5000);

    mods.thermalexpansion.Sawmill.addRecipe(<projectred-core:resource_item:301> * 8, <projectred-core:resource_item:300>, 2000, <projectred-core:resource_item:301>, 20);

    // Input nie przyjmuje oredicta (<ore:logWood>)
    mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:5> * 6, <minecraft:log>, 2000, <thermalfoundation:material:800>, 100); /////////ten przepis

    mods.thermalexpansion.Compactor.addPressRecipe(<galacticraftplanets:carbon_fragments> * 8, <thermalfoundation:material:768>, 4000);

    mods.thermalexpansion.Compactor.addPressRecipe(<galacticraftplanets:carbon_fragments> * 4, <thermalfoundation:material:769>, 4000);

    mods.thermalexpansion.Compactor.addStorageRecipe(<thaumcraft:plate>, <thaumcraft:ingot:2>, 4000);

    mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:glowstone_dust>, <enderio:item_material:76>, 3000, <enderio:block_holier_fog>, 75);

    mods.thermalexpansion.Pulverizer.addRecipe(<enderio:block_infinity_fog>, <enderio:item_material:20>, 2500);

    print("Arcana Industrialis: thermal script loaded.");