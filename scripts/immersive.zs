import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded immersiveengineering

    # Removed recipes

    var toRemove as IItemStack[] = [

        <immersiveengineering:metal:40>,
        <immersiveengineering:metal:39>,
        <immersiveengineering:metal:38>,
        <immersiveengineering:metal:37>,
        <immersiveengineering:metal:36>,
        <immersiveengineering:metal:35>,
        <immersiveengineering:metal:34>,
        <immersiveengineering:metal:33>,
        <immersiveengineering:metal:32>,
        <immersiveengineering:metal:31>,
        <immersiveengineering:metal:30>,
        <immersiveintelligence:motor_gear>,
        <immersiveintelligence:motor_gear:1>,
        <immersiveintelligence:motor_gear:2>,
        <immersiveintelligence:motor_gear:3>,
        <immersiveintelligence:motor_gear:4>
    ];

    for item in toRemove {
        recipes.remove(item);
        rh(item);
    }
    furnace.remove(<ore:ingotSteel>);
    
    var toDelete as IItemStack[] = [
        <immersiveintelligence:armor_upgrade:3>,
        <immersiveintelligence:armor_upgrade:13>,
        <immersiveintelligence:radio_configurator:1>,
        <immersiveintelligence:data_connector:5>,
        <immersiveintelligence:metal_decoration:2>,
        <immersiveengineering:blueprint>.withTag({blueprint: "advanced_functional_circuits"}),
        <immersiveintelligence:material_dust>
    ];

    for item in toDelete {
        recipes.remove(item);
    }

    for i in <ore:dustBrass>.items {
        recipes.remove(i);
    }
    mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveintelligence:material_dust:1>, <ore:ingotCopper>, <ore:ingotZinc>, 2000);

    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:1> * 2, <ore:ingotLithium>, null, 2000, 1500, [<ore:ingotFerroboron>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:2>, <ore:gemDiamond>, null, 2000, 1500, [<ore:ingotGraphite> * 2], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:3> * 3, <ore:ingotMagnesium>, null, 2000, 1500, [<ore:ingotBoron> * 2], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:4> * 2, <ore:ingotManganeseDioxide>, null, 2000, 1500, [<ore:ingotLithium>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:10>, <ore:ingotHardCarbon>, null, 2000, 1500, [<ore:ingotTough>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:6> * 2, <ore:ingotSteel>, null, 2000, 1500, [<ore:ingotBoron>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:11> * 2, <ore:ingotExtreme>, null, 2000, 1500, [<ore:gemBoronArsenide>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:12> * 8, <ore:ingotZirconium> * 7, null, 2000, 1500, [<ore:ingotTin>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:13> * 2, <ore:dustGraphite>, null, 2000, 1500, [<ore:itemSilicon>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:15> * 16, <ore:ingotIron> * 15, null, 2000, 1500, [<ore:dustCarbonManganese>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<nuclearcraft:alloy:16> * 16, <ore:ingotZirconium>, null, 2000, 1500, [<ore:dustMolybdenum> * 15], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:104>, <ore:ingotCopper>, null, 2000, 1500, [<ore:dustElectrotine> * 4], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3>, <ore:itemSilicon>, null, 2000, 1500, [<ore:dustRedstone>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:5>, <ore:ingotIron>, null, 2000, 1500, [<ore:enderpearl>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, null, 2000, 1500, [<ore:enderpearl>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <ore:ingotSteel>, null, 2000, 1500, [<ore:obsidian>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:8>, <ore:ingotDarkSteel>, null, 2000, 1500, [<ore:obsidian>, <ore:endstone>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:164> * 2, <ore:ingotCopper>, null, 2000, 1500, [<ore:ingotNickel>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:162> * 3, <ore:ingotIron> * 2, null, 2000, 1500, [<ore:ingotNickel>], "Alloying");
    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:163> * 4, <ore:ingotCopper> * 3, null, 2000, 1500, [<ore:ingotTin>], "Alloying");
    
    mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveintelligence:material_boule>);

    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:block_fused_glass>, <ore:blockGlassColorless>, null, 2000, 1500);

    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_material:39>, <ore:ingotPlatinum>, null, 2000, 1500, [<ore:ingotLead> * 3, <ore:enderpearl> * 4], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:167>, <ore:ingotEnderiumBase>, null, 2000, 1000, [<ore:sand>], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:166>, <ore:ingotSilver>, null, 2000, 1500, [<ore:ingotTin> * 3, <ore:dustGlowstone> * 4], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:166>, <ore:ingotSilver>, null, 2000, 1500, [<ore:ingotTin> * 3, <ore:glowstone>], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:166>, <ore:ingotSilver>, null, 2000, 1600, [<ore:ingotTin> * 3, <ore:ingotRefinedGlowstone>], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:165>, <ore:ingotSilver>, null, 2000, 1500, [<ore:ingotCopper> * 3, <ore:dustRedstone> * 5], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:165>, <ore:ingotSilver> * 2, null, 4000, 1600, [<ore:ingotCopper> * 6, <ore:blockRedstone>], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveintelligence:material_ingot>, <ore:ingotPlatinum>, null, 2000, 1500, [<ore:ingotConstantan> * 3, <ore:ingotElectrum> * 2], "Alloying");

    mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_dark_steel_upgrade>, <enderio:block_dark_iron_bars> * 4, null, 1000, 2000, [<ore:string> * 4, <tconstruct:cast>], "Alloying");

    // Remove im. intell. gears from gear oredict
    <ore:gearTungsten>.remove(<immersiveintelligence:motor_gear:4>);
    <ore:gearBrass>.remove(<immersiveintelligence:motor_gear:1>);
    <ore:gearSteel>.remove(<immersiveintelligence:motor_gear:3>);
    <ore:gearIron>.remove(<immersiveintelligence:motor_gear:2>);
    <ore:gearCopper>.remove(<immersiveintelligence:motor_gear>);

    // And im. intel. circuit board
    <ore:circuitAdvanced>.remove(<immersiveintelligence:material:7>);
    <ore:circuitElite>.remove(<immersiveintelligence:material:12>);
    
    
    recipes.addShapedMirrored("Engineer's Headgear", <immersiveintelligence:armor_upgrade:3>,
    [[null, null, null],
     [<ore:plateSteel>, <immersiveengineering:wirecoil:6>, <ore:plateSteel>],
     [<immersiveintelligence:armor_upgrade:2>, <immersiveintelligence:material:7>, <immersiveintelligence:armor_upgrade:1>]]
    );

    recipes.addShapedMirrored("Exoskeleton", <immersiveintelligence:armor_upgrade:13>,
    [[<ore:scaffoldingSteel>, <immersiveengineering:toolupgrade:9>, <ore:scaffoldingSteel>],
     [<immersiveintelligence:material:7>, null, <immersiveintelligence:material:7>],
     [<ore:scaffoldingSteel>, null, <ore:scaffoldingSteel>]]
    );
    
    recipes.addShapedMirrored("Adv. Radio Configurator", <immersiveintelligence:radio_configurator:1>,
    [[<ore:stickSteel>, null, null],
     [<ore:plateSteel>, <immersiveintelligence:radio_configurator>, <immersiveintelligence:material:7>],
     [<ore:plateSteel>, <ore:plateSteel>, <immersiveintelligence:material:7>]]
    );

    recipes.addShapedMirrored("Adv. Inserter", <immersiveintelligence:data_connector:5>,
    [[<ore:stickAluminum>, <ore:stickAluminum>, null],
     [null, <immersiveintelligence:material:14>, <immersiveintelligence:material:7>],
     [<ore:plateSteel>, <immersiveintelligence:material:7>, <ore:plateSteel>]]
    );

    recipes.addShapedMirrored("Metal Decoration", <immersiveintelligence:metal_decoration:2>,
    [[<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:1>, <immersiveintelligence:material:7>],
     [<ore:plateAdvancedElectronicAlloy>, <ore:wireTungsten>, <ore:plateAdvancedElectronicAlloy>],
     [<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:1>, <immersiveintelligence:material:7>]]
    );

    recipes.addShapedMirrored("adv. func. circuits", <immersiveengineering:blueprint>.withTag({blueprint: "advanced_functional_circuits"}),
    [[<immersiveintelligence:material:7>, <immersiveengineering:tool:2>, <immersiveintelligence:material:7>],
     [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
     [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]
    );
    

    #recipes.remove(<immersiveengineering:tool:1>);
    recipes.remove(<immersiveengineering:material:2>);
    recipes.remove(<engineersdecor:treated_wood_crafting_table>);


    # Circuit Oredict

    <ore:circuitBasic>.add(<immersiveengineering:material:27>);

    # Removed Engineer's wire cutters recipe

    #recipes.addShapedMirrored("Engineers's Wire Cutters", <immersiveengineering:tool:1>,
    #[[null, <stevescarts:modulecomponents:12>, <ore:ingotSteel>],
    #[null, null, <stevescarts:modulecomponents:12>],
    #[null, null, null]]);

    recipes.addShaped("Steel Rod", <immersiveengineering:material:2> * 2,
    [[null, null, null],
    [null, <ore:ingotSteel>, null],
    [null, <ore:ingotSteel>, null]]);

    recipes.addShaped("Treated Wood Crafting Table", <engineersdecor:treated_wood_crafting_table>,
    [[<ore:plankTreatedWood>, <ore:craftingTableWood>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<immersiveengineering:wooden_decoration>, null, <immersiveengineering:wooden_decoration>]]
    );


    # Ore veins

    mods.immersiveengineering.Excavator.removeMineral("Magnetite Ore");
    mods.immersiveengineering.Excavator.removeMineral("Uranium Ore");

    mods.immersiveengineering.Excavator.addMineral("Platinum Ore", 5, 0.005, ["oreNickel", "orePlatinum", "oreIridium"], [44.72, 52.69, 2.59], [-28]);  // Only on GC's moon

    mods.immersiveengineering.Excavator.addMineral("Uranium Ore", 20, 0.005, ["oreUranium", "oreLead", "oreThorium"], [58.5, 18.2, 23.3,], [0]);
    mods.immersiveengineering.Excavator.addMineral("Magnetite Ore", 50, 0.005, ["oreIron", "oreGold", "oreMagnesium"], [85.0, 5.0, 10.0,], [0]);

    # kiln

    mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_material:76>, <minecraft:glowstone_dust>, <minecraft:clay_ball>, 2000);

    // Steel gear
    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:288>, <ore:ingotSteel>, <immersiveengineering:mold:1>, 2000, 4);



    # Plates

    mods.immersiveengineering.MetalPress.addRecipe(<thaumcraft:plate>, <thaumcraft:ingot:2>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:355>, <ore:ingotBronze>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:354>, <ore:ingotInvar>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:352>, <ore:ingotSteel>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:325>, <ore:ingotNickel>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:323>, <ore:ingotLead>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:322>, <ore:ingotSilver>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:321>, <ore:ingotTin>, <immersiveengineering:mold>, 2000, 1);
    
    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:33>, <ore:ingotGold>, <immersiveengineering:mold>, 2000, 1);

    mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:32>, <ore:ingotIron>, <immersiveengineering:mold>, 2000, 1);
    
    print("Arcana Industrialis: immersive script loaded.");