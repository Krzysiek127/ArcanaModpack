import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded nuclearcraft

    # Removed recipes

    var toDelete as IItemStack[] = [
        <nuclearcraft:compound:2>,
        <nuclearcraft:gem:6>,
        <nuclearcraft:fission_computer_port>,
        <nuclearcraft:heat_exchanger_computer_port>,
        <nuclearcraft:turbine_computer_port>,
        <nuclearcraft:part:12>,
        <nuclearcraft:part:7>
    ];

    for item in toDelete {
        recipes.remove(item);
    }

    rh(<nuclearcraft:gem:6>);


    recipes.addShapedMirrored("Energetic Blend", <nuclearcraft:compound:2> * 4,
    [[<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>],
    [<ore:dustGlowstone>, <ore:dustElectrotine>, <ore:dustGlowstone>],
    [<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>]]);

    recipes.addShapedMirrored("Fission Computer Port (WIP)", <nuclearcraft:fission_computer_port>,
    [[<nuclearcraft:part>, <ore:oc:circuitChip1>, <nuclearcraft:part>],
    [<opencomputers:cable>, <ore:steelFrame>, <opencomputers:cable>],
    [<nuclearcraft:part>, <ore:oc:materialCircuitBoardPrinted>, <nuclearcraft:part>]]);

    recipes.addShapedMirrored("Heat Exchanger Computer Port", <nuclearcraft:heat_exchanger_computer_port>,
    [[<enderio:item_material:72>, <ore:oc:circuitChip1>, <enderio:item_material:72>],
    [<opencomputers:cable>, <ore:steelFrame>, <opencomputers:cable>],
    [<enderio:item_material:72>, <ore:oc:materialCircuitBoardPrinted>, <enderio:item_material:72>]]);

    recipes.addShapedMirrored("Turbine Computer Port", <nuclearcraft:turbine_computer_port>,
    [[<nuclearcraft:alloy:15>, <ore:oc:circuitChip1>, <nuclearcraft:alloy:15>],
    [<opencomputers:cable>, <ore:steelFrame>, <opencomputers:cable>],
    [<nuclearcraft:alloy:15>, <ore:oc:materialCircuitBoardPrinted>, <nuclearcraft:alloy:15>]]);

    recipes.addShapedMirrored("", <nuclearcraft:part:12> * 2,
    [[<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>],
    [<ore:ingotTough>, <ore:itemSimpleMachineChassi>, <ore:ingotTough>],
    [<ore:plateSteel>, <ore:ingotTough>, <ore:plateSteel>]]);

    recipes.addShapedMirrored("", <nuclearcraft:part:7>,
    [[<minecraft:lever>, <minecraft:redstone_torch>, <minecraft:lever>],
    [<ore:ingotFerroboron>, <thermalfoundation:material:512>, <ore:ingotFerroboron>],
    [<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>]]);

    // Przepisy z innych metal formerów/compressorów
    mods.nuclearcraft.Pressurizer.removeAllRecipes();

    mods.nuclearcraft.Pressurizer.addRecipe(<ore:dustRhodochrosite>, <ore:gemRhodochrosite>);
    mods.nuclearcraft.Pressurizer.addRecipe(<ore:ingotGraphite>, <ore:ingotPyrolyticCarbon>);
    mods.nuclearcraft.Pressurizer.addRecipe(<ore:dustBoronNitride>, <ore:gemBoronNitride>);
    mods.nuclearcraft.Pressurizer.addRecipe(<ore:dustFluorite>, <ore:gemFluorite>);
    mods.nuclearcraft.Pressurizer.addRecipe(<ore:dustVilliaumite>, <ore:gemVilliaumite>);
    mods.nuclearcraft.Pressurizer.addRecipe(<ore:dustCarobbiite>, <ore:gemCarobbiite>);