import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh; 
#modloaded thaumcraft

    # Removed Recipes 

    recipes.remove(<thaumcraft:plate>);
    recipes.remove(<thaumcraft:plate:1>);
    recipes.remove(<thaumcraft:plate:2>);
    recipes.remove(<thaumcraft:plate:3>);
    rh(<thaumcraft:plate:1>);


    <ore:plateBrass>.remove(<thaumcraft:plate>);
    <ore:ingotBrass>.remove(<thaumcraft:ingot:2>);
    <ore:nuggetBrass>.remove(<thaumcraft:nugget:8>);
    <ore:blockBrass>.remove(<thaumcraft:metal_brass>);

    var toRemove as IItemStack[] = [
        <thaumcraft:thaumometer>,
        <thaumcraft:goggles>,
        <thaumcraft:infusion_matrix>,
        <thaumcraft:mechanism_simple>,
        <thaumcraft:turret>,
        <thaumcraft:mechanism_complex>,
        <thaumcraft:turret:1>,
        <thaumcraft:caster_basic>,
        <thaumcraft:vis_resonator>,
        <thaumcraft:module>,
        <thaumcraft:module:1>,
        <thaumcraft:mind>,
        <thaumcraft:arcane_ear>,
        <thaumcraft:morphic_resonator>,
        <thaumcraft:alembic>,
        <thaumcraft:smelter_basic>,
        <thaumcraft:smelter_thaumium>,
        <thaumcraft:smelter_void>,
        <thaumcraft:potion_sprayer>,
        <thaumcraft:smelter_vent>,
        <thaumcraft:smelter_aux>,
        <thaumcraft:essentia_input>,
        <thaumcraft:essentia_output>,
        <thaumcraft:grapple_gun_tip>,
        <thaumcraft:grapple_gun>,
        <thaumcraft:condenser>,
        <thaumcraft:grapple_gun_spool>
    ];

    for item in toRemove {
        mods.thaumcraft.ArcaneWorkbench.removeRecipe(item);
    }

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Thaumometer", "", 20, [<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>], <thaumcraft:thaumometer>,
    [[null, <ore:plateGold>, null],
    [<ore:plateGold>, <astralsorcery:itemcraftingcomponent:3>, <ore:plateGold>],
    [null, <ore:plateGold>, null]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Goggles of Revealing", "", 60, [], <thaumcraft:goggles>,
    [[<minecraft:lead>, <thaumcraft:plate>, <minecraft:lead>],
    [<ore:itemLeather>, null, <ore:itemLeather>],
    [<thaumcraft:thaumometer>, <dungeontactics:flight_goggles>, <thaumcraft:thaumometer>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Simple Arcane Mechanism", "", 10, [<aspect:ignis>, <aspect:aqua>], <thaumcraft:mechanism_simple>,
    [[null, null, null],
    [<thaumcraft:plate>, <ore:gearCopper>, <thaumcraft:plate>],
    [<ore:plateIron>, <ore:plateIron>, <thaumcraft:plate>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Complex Arcane Mechanism", "", 60, [ <aspect:ignis>, <aspect:aqua>], <thaumcraft:mechanism_complex>,
    [[null, null, null],
    [<thaumcraft:mechanism_simple>, <immersiveengineering:metal_decoration0:5>, <thaumcraft:mechanism_simple>],
    [<ore:plateIron>, <thaumcraft:plate:2>, <thaumcraft:plate:2>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Automated Crossbow", "", 120, [<aspect:aer>], <thaumcraft:turret>,
    [[<minecraft:bow>, <thaumcraft:mind>, <ore:gearIron>],
    [<thaumcraft:mechanism_simple>, <thermalfoundation:material:640>, <thaumcraft:mechanism_simple>],
    [<forestry:oak_stick> ,null, <forestry:oak_stick>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Advanced Automated Crossbow", "", 150, [<aspect:aer> * 2], <thaumcraft:turret:1>,
    [[<ore:plateIron>, <botania:endereyeblock>, <ore:plateIron>],
    [<thaumcraft:mechanism_complex>, <thaumcraft:mind:1>, <thaumcraft:mechanism_complex>],
    [null, <thaumcraft:turret>, null]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Caster's Gauntlet", "", 100, [<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>], <thaumcraft:caster_basic>,
    [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<botania:livingwood:1>, <thaumcraft:vis_resonator>, <botania:livingwood:1>],
    [<immersiveintelligence:material:27>, <thaumcraft:thaumometer>, <immersiveintelligence:material:27>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Vis Resonator", "", 50, [<aspect:aer>, <aspect:aqua>], <thaumcraft:vis_resonator>,
    [[null, <ore:plateIron>, null],
    [<ore:plateIron>, <astralsorcery:itemcraftingcomponent:3>, <ore:plateIron>],
    [null,<ore:plateIron>, null]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Vision Module", "", 50, [<aspect:aqua>], <thaumcraft:module>,
    [[<astralsorcery:itemcraftingcomponent:3>, null, <astralsorcery:itemcraftingcomponent:3>],
    [<minecraft:fermented_spider_eye>, null, <minecraft:fermented_spider_eye>],
    [<thaumcraft:plate>, <thaumcraft:mechanism_simple>,<thaumcraft:plate>]]);
    
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Aggresione Module", "", 50, [<aspect:ignis>], <thaumcraft:module:1>,
    [[null, <ore:paneGlass>, null],
    [<ore:paneGlass>, <astralsorcery:itemcraftingcomponent:3>, <ore:paneGlass>],
    [<thaumcraft:mechanism_simple>, <ore:dustPyrotheum>, <thaumcraft:mechanism_simple>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Clockwork Mind", "", 25, [<aspect:ignis>, <aspect:ordo>], <thaumcraft:mind>,
    [[null, <ore:paneGlass>, null],
    [<ore:paneGlass>, <astralsorcery:itemcraftingcomponent:3>, <ore:paneGlass>],
    [<thaumcraft:mechanism_simple>, <minecraft:comparator>, <thaumcraft:mechanism_simple>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Ear", "", 15, [<aspect:aer>], <thaumcraft:arcane_ear>,
    [[<thaumcraft:plate>, null, <thaumcraft:plate>],
    [null, <thaumcraft:mechanism_simple>, null],
    [<thaumcraft:plank_greatwood>, <projectred-core:resource_item:103>, <thaumcraft:plank_greatwood>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Morphic Resonator", "", 50, [<aspect:aer>, <aspect:ignis>], <thaumcraft:morphic_resonator>,
    [[null, <ore:paneGlass>, null],
    [<thaumcraft:plate>, <thaumcraft:nugget:10>, <thaumcraft:plate>],
    [null, <ore:paneGlass>, null]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Alembic", "", 50, [<aspect:aqua>], <thaumcraft:alembic>,
    [[<thaumcraft:plank_greatwood>, <thaumcraft:filter>, <thaumcraft:plank_greatwood>],
    [<thaumcraft:plate>, <galacticraftcore:fluid_tank>, <thaumcraft:plate>],
    [<thaumcraft:plank_greatwood>, <thaumcraft:filter>, <thaumcraft:plank_greatwood>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Alembic", "", 50, [<aspect:ignis>], <thaumcraft:smelter_basic>,
    [[<thaumcraft:plate>, <thaumcraft:crucible>, <thaumcraft:plate>],
    [<thaumcraft:stone_arcane_brick>, <minecraft:furnace>, <thaumcraft:stone_arcane_brick>],
    [<thaumcraft:plate>, <thaumcraft:stone_arcane_brick>, <thaumcraft:plate>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Alembic", "", 250, [<aspect:ignis> * 2], <thaumcraft:smelter_thaumium>,
    [[<thaumcraft:plate>, <thaumcraft:smelter_basic>, <thaumcraft:plate>],
    [<thaumcraft:plate:2>, <thaumcraft:metal_alchemical>, <thaumcraft:plate:2>],
    [<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>]]);
     
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Alembic", "", 800, [<aspect:ignis> * 3], <thaumcraft:smelter_void>,
    [[<thaumcraft:plate>, <thaumcraft:smelter_basic>, <thaumcraft:plate>],
    [<thaumcraft:plate:3>, <thaumcraft:metal_alchemical_advanced>, <thaumcraft:plate:3>],
    [<thaumcraft:plate:3>, <thaumcraft:plate:3>, <thaumcraft:plate:3>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Potion Sprayer", "", 80, [<aspect:aer>, <aspect:aqua>, <aspect:ignis>], <thaumcraft:potion_sprayer>,
    [[<thaumcraft:plate>, <minecraft:dispenser>, <thaumcraft:plate>],
    [<thaumcraft:stone_arcane_brick>, <minecraft:brewing_stand>, <thaumcraft:stone_arcane_brick>],
    [<ore:plateSteel>, <thaumcraft:metal_alchemical>, <ore:plateSteel>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Auxiliary Venting Port", "", 150, [<aspect:aer> * 2], <thaumcraft:smelter_vent>,
    [[<ore:plateIron>, <thaumcraft:plate>, <ore:plateIron>],
    [<thaumcraft:filter>, <thaumcraft:metal_alchemical>, <thaumcraft:filter>],
    [<ore:plateIron>, <thaumcraft:plate>, <ore:plateIron>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Auxiliary Slurry Pump", "", 150, [<aspect:aer>, <aspect:terra>], <thaumcraft:smelter_aux>,
    [[<thaumcraft:plank_greatwood>, <thaumcraft:tube_filter>, <thaumcraft:plank_greatwood>],
    [<thaumcraft:plate>, <thaumcraft:metal_alchemical>, <thaumcraft:plate>],
    [<ore:plateIron>, <thaumcraft:bellows>, <ore:plateIron>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Filling Essentia Transfuser", "", 100, [<aspect:aer>, <aspect:aqua>], <thaumcraft:essentia_input>,
    [[null, <minecraft:dispenser>, null],
    [<thaumcraft:plate>, <thaumcraft:metal_alchemical>, <thaumcraft:plate>],
    [<ore:plateSteel>, <thaumcraft:plank_greatwood>, <ore:plateSteel>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Emptying Essentia Transfuser", "", 100, [<aspect:aer>, <aspect:aqua>], <thaumcraft:essentia_output>,
    [[null, <minecraft:hopper>, null],
    [<thaumcraft:plate>, <thaumcraft:metal_alchemical>, <thaumcraft:plate>],
    [<ore:plateSteel>, <thaumcraft:plank_greatwood>, <ore:plateSteel>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Grappler Head", "", 30, [<aspect:terra>], <thaumcraft:grapple_gun_tip>,
    [[<thaumcraft:plate>, <thaumcraft:nugget:10>, <thaumcraft:plate>],
    [<thaumcraft:nugget:10>, <ore:gearElectrum>, <thaumcraft:nugget:10>],
    [<thaumcraft:plate>,<thaumcraft:nugget:10> , <thaumcraft:plate>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Arcane Grappler", "", 100, [<aspect:aer>, <aspect:ignis>], <thaumcraft:grapple_gun>,
    [[null, null, <thaumcraft:grapple_gun_spool>],
    [<thaumcraft:grapple_gun_tip>, <ore:plateSteel>, <thermalfoundation:material:640>],
    [null, <thaumcraft:plate>, <thaumcraft:plank_greatwood>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Flux Condenser", "", 500, [<aspect:aer> * 5, <aspect:aqua> * 5, <aspect:perditio> * 5], <thaumcraft:condenser>,
    [[<thaumcraft:plate>, <thaumcraft:morphic_resonator>, <thaumcraft:plate>],
    [<thaumcraft:plank_greatwood>, <thaumcraft:mechanism_complex>, <thaumcraft:plank_greatwood>],
    [<thaumcraft:plate>, <thaumcraft:tube>, <thaumcraft:plate>]]);

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Grappler Spool", "", 25, [<aspect:aqua>], <thaumcraft:grapple_gun_spool>,
    [[null, <immersiveintelligence:cloth_decoration>, <ore:string>],
    [<thaumcraft:plate>, <thaumcraft:mechanism_simple>, <minecraft:tripwire_hook>],
    [<thaumcraft:plate>, <thaumcraft:plate>, null]]);


    # Infusion

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("Runic Matrix", "", 200, [<aspect:aer>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>], <thaumcraft:infusion_matrix>,
    [[<thaumcraft:stone_arcane_brick>, <botania:rune>, <thaumcraft:stone_arcane_brick>],
    [<botania:rune:3>, <botania:autocraftinghalo>, <botania:rune:1>],
    [<thaumcraft:stone_arcane_brick>, <botania:rune:2>, <thaumcraft:stone_arcane_brick>]]);

    print("Arcana Industrialis: Thaumcraft script loaded.");