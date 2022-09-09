import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh; 

#modloaded galacticraftcore

    # Removed Recipes

    recipes.removeByRecipeName("galacticraftcore:aluminum_wire_1_alt");
    recipes.removeByRecipeName("galacticraftcore:aluminum_wire_1");

    var toDelete as IItemStack[] = [

        <galacticraftcore:aluminum_wire>,
        <galacticraftcore:aluminum_wire:2>,
        <galacticraftcore:aluminum_wire:3>,
        <galacticraftcore:enclosed:14>,
        <galacticraftcore:machine>, // coal gen
        <galacticraftcore:machine2:4>, // circuit fab
        <galacticraftcore:machine:12>, // compressor
        <galacticraftcore:machine2>, // el compressor
        <galacticraftcore:machine4>, // adv compressor
        <galacticraftcore:machine2:12>, // deconstructor
        <galacticraftplanets:mars_machine:8>, // launch controller
        <galacticraftplanets:geothermal_generator>, // geothermal gen
        <galacticraftplanets:carbon_fragments>,
        <galacticraftcore:solar>, // sol panel
        <galacticraftcore:basic_item>, // single panel
        <galacticraftcore:basic_item:1>, // full panel
        <galacticraftplanets:basic_item_venus:5>, // single array panel
        <galacticraftplanets:solar_array_module>, // sol array module
        <galacticraftplanets:atomic_battery>,
        <galacticraftcore:fluid_tank>
    ];
    for item in toDelete {
        recipes.remove(item);
    }
    // We don't use light cables here, we don't do that here

    rh(<galacticraftcore:aluminum_wire>);
    rh(<galacticraftcore:aluminum_wire:2>);
    rh(<galacticraftcore:aluminum_wire:3>);
    rh(<galacticraftcore:enclosed:14>);

    furnace.remove(<galacticraftplanets:carbon_fragments>);

    // Recipes in machines
    
    mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:9>);
    mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3);
    mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>);
    mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:heavy_plating> * 2);

    # Aluminum Wire

    recipes.addShapedMirrored("Aluminum Wire", <galacticraftcore:aluminum_wire:1> * 4,
    [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
    [<ore:ingotAluminum>, <ore:ingotElectrotineAlloy>, <ore:ingotAluminum>],
    [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>]]);


    # Machines 

    recipes.addShapedMirrored("Coal Generator", <galacticraftcore:machine>,
    [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<galacticraftcore:aluminum_wire:1>, <minecraft:furnace>, <galacticraftcore:aluminum_wire:1>],
    [<ore:plateIron>, <galacticraftcore:aluminum_wire:1>, <ore:plateIron>]]);

    recipes.addShapedMirrored("Circuit Fabricator", <galacticraftcore:machine2:4>,
    [[<ore:plateAluminum>, <ore:circuitBasic>, <ore:plateAluminum>],
    [<minecraft:stone_button>, <minecraft:furnace>, <minecraft:stone_button>],
    [<galacticraftcore:aluminum_wire:1>, <thermalfoundation:material:512>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Compressor", <galacticraftcore:machine:12>,
    [[<ore:plateAluminum>, <thermalfoundation:material:512>, <ore:plateAluminum>],
    [<ore:plateAluminum>, <minecraft:anvil>, <ore:plateAluminum>],
    [<ore:plateAluminum>, <ore:waferBasic>, <ore:plateAluminum>]]);

    recipes.addShapedMirrored("Electric Compressor", <galacticraftcore:machine2>,
    [[<ore:compressedSteel>, <ore:compressedTin>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <galacticraftcore:machine:12>, <ore:compressedSteel>],
    [<galacticraftcore:aluminum_wire:1>, <ore:waferAdvanced>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Advanced Compressor", <galacticraftcore:machine4>,
    [[<galacticraftcore:heavy_plating>, <galacticraftcore:heavy_plating>, <galacticraftcore:heavy_plating>],
    [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:machine2>, <galacticraftplanets:item_basic_mars:3>],
    [<galacticraftcore:aluminum_wire:1>, <ore:waferAdvanced>, <galacticraftcore:aluminum_wire:1>]]);

    # replaced refined storage core:1 with ae2 annihilation core
    recipes.addShapedMirrored("Deconstructor", <galacticraftcore:machine2:12>,
    [[<ore:compressedSteel>, <immersiveengineering:tool:1>, <ore:compressedSteel>],
    [<galacticraftcore:heavy_plating>, <minecraft:anvil>, <galacticraftcore:heavy_plating>],
    [<galacticraftcore:aluminum_wire:1>, <refinedstorage:core:1>, <galacticraftcore:aluminum_wire:1>]]);

    # Diamond processor (rs)
    recipes.addShapedMirrored("Launch Controller", <galacticraftplanets:mars_machine:8>,
    [[<ore:compressedDesh>, <galacticraftcore:basic_item:19>, <ore:compressedDesh>],
    [<galacticraftplanets:item_basic_asteroids:5>, <mekanism:basicblock:8>, <galacticraftplanets:item_basic_asteroids:5>],
    [<refinedstorage:processor:5>, <ore:waferAdvanced>, <refinedstorage:processor:5>]]);

    recipes.addShapedMirrored("Geothermal Generator", <galacticraftplanets:geothermal_generator>,
    [[<ore:compressedBronze>, <galacticraftplanets:atmospheric_valve>, <ore:compressedBronze>],
    [<galacticraftcore:aluminum_wire:1>, <galacticraftcore:machine>, <galacticraftcore:aluminum_wire:1>],
    [<ore:compressedBronze>, <ore:blockLead>, <ore:compressedBronze>]]);

    recipes.addShapedMirrored("Basic Solar Panel", <galacticraftcore:solar>,
    [[<ore:compressedSteel>, <galacticraftcore:basic_item:1>, <ore:compressedSteel>],
    [<ore:compressedSteel>, <galacticraftcore:steel_pole>, <ore:compressedSteel>],
    [<galacticraftcore:aluminum_wire:1>, <ore:waferBasic>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Full Solar Panel", <galacticraftcore:basic_item:1>,
    [[<galacticraftcore:basic_item>, <galacticraftcore:basic_item>, <galacticraftcore:basic_item>],
    [<galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>],
    [<galacticraftcore:basic_item>, <galacticraftcore:basic_item>, <galacticraftcore:basic_item>]]);

    recipes.addShapedMirrored("Single Solar Module", <galacticraftcore:basic_item>,
    [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:waferSolar>, <ore:waferSolar>, <ore:waferSolar>],
    [<galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Solar Array Panel", <galacticraftplanets:basic_item_venus:5>,
    [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:waferSolarThin>, <ore:waferSolarThin>, <ore:waferSolarThin>],
    [<galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Solar Array Module", <galacticraftplanets:solar_array_module>,
    [[null, null, null],
    [<galacticraftplanets:basic_item_venus:5>, <galacticraftplanets:basic_item_venus:5>, <galacticraftplanets:basic_item_venus:5>],
    [<galacticraftcore:aluminum_wire:1>, <ore:waferAdvanced>, <galacticraftcore:aluminum_wire:1>]]);

    recipes.addShapedMirrored("Atomic Battery", <galacticraftplanets:atomic_battery>,
    [[<ore:plateLead>, <mekanism:energyupgrade>, <ore:plateLead>],
    [<teslacorelib:energy_tier2>, <galacticraftplanets:basic_item_venus:2>, <industrialforegoing:energy_field_addon>],
    [<ore:plateLead>,<galacticraftcore:battery>, <ore:plateLead>]]);

    recipes.addShapedMirrored("Fluid Tank", <galacticraftcore:fluid_tank>,
    [[<ore:stickSteel>, <ore:paneGlass>, <ore:stickSteel>],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [<ore:stickSteel>, <ore:paneGlass>, <ore:stickSteel>]]);


    # Wafers

    mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13>, <minecraft:diamond>, <enderio:item_material:5>, <enderio:item_material:5>, <minecraft:redstone>, <minecraft:redstone_torch>);
    mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>, <mekanism:compresseddiamond>, <enderio:item_material:5>, <enderio:item_material:5>, <projectred-core:resource_item:103>, <minecraft:comparator>);

    # Compressed Stuff

    mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:basic_item:9>, <thermalfoundation:material:160>, <thermalfoundation:material:160>);

    mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:heavy_plating> * 3,
    <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>,
    <nuclearcraft:part>, <nuclearcraft:part>, <nuclearcraft:part>,
    <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:8>, <galacticraftcore:basic_item:10>);


    # renaming heavy aluminum wire
    <galacticraftcore:aluminum_wire:1>.displayName = "Aluminum Wire";
    <galacticraftcore:aluminum_wire:1>.addShiftTooltip(format.gold('Transfer rate: ~1000 RF/t'), 'Hold shift for details');

    print("Arcana Industrialis: galactic script loaded.");