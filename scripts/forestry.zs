import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded forestry


    <forestry:wrench>.maxStackSize = 1;


    # Removed recipes

    var toDelete as IItemStack[] = [

        <forestry:gear_tin>,
        <forestry:gear_bronze>,
        <forestry:gear_copper>,
        <forestry:sturdy_machine>,
        <forestry:carpenter>,
        <forestry:fabricator>,
        <forestry:still>
    ];

    for item in toDelete {
        recipes.remove(item);
    }

    rh(<forestry:gear_tin>);
    rh(<forestry:gear_bronze>);
    rh(<forestry:gear_copper>);

    mods.forestry.Carpenter.removeRecipe(<forestry:hardened_machine>, <liquid:water>);
    mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>, <liquid:seed.oil>);
    mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>, <liquid:oliveoil>);
    mods.forestry.Carpenter.removeRecipe(<forestry:oak_stick>, <liquid:seed.oil>);
    mods.forestry.Carpenter.removeRecipe(<forestry:oak_stick>, <liquid:oliveoil>);
    mods.forestry.ThermionicFabricator.removeCast(<forestry:flexible_casing>);
    

    recipes.addShapedMirrored("Sturdy Casing", <forestry:sturdy_machine>,
    [[<ore:plateBronze>, <ore:ingotBronze>, <ore:plateBronze>],
    [<engineersdecor:panzerglass_block>, <ore:gearBronze>, <engineersdecor:panzerglass_block>],
    [<ore:plateBronze>, <ore:ingotBronze>, <ore:plateBronze>]]);

    recipes.addShapedMirrored("Carpenter", <forestry:carpenter>,
    [[<ore:plateBronze>, <ore:gearSteel>, <ore:plateBronze>],
    [<ore:gearCopper>, <forestry:sturdy_machine>, <ore:gearCopper>],
    [<ore:plateBronze>, <ore:circuitBasic>, <ore:plateBronze>]]);

    recipes.addShapedMirrored("Thermionic Fabricator", <forestry:fabricator>,
    [[<ore:plateGold>, <mekanism:basicblock2:5>, <ore:plateGold>],
    [<engineersdecor:panzerglass_block>, <forestry:hardened_machine>, <engineersdecor:panzerglass_block>],
    [<ore:gearElectrum>, <immersiveengineering:wooden_device0:5>, <ore:gearElectrum>]]);

    recipes.addShapedMirrored("Still", <forestry:still>,
    [[<thermalexpansion:tank>, <thermalfoundation:material:515>, <thermalexpansion:tank>],
    [<ore:blockGlass>, <forestry:hardened_machine>, <ore:blockGlass>],
    [<ore:dustEnergetic>, <thermalfoundation:material:512>, <ore:dustEnergetic>]]);

    # Machine recipes

    mods.forestry.Carpenter.addRecipe(<forestry:hardened_machine>, 
    [[<minecraft:diamond>, <mekanism:ingot>, <minecraft:diamond>],
    [<engineersdecor:panzerglass_block>, <forestry:sturdy_machine>, <engineersdecor:panzerglass_block>],
    [<minecraft:diamond>, <mekanism:ingot>, <minecraft:diamond>]],
    300, <liquid:water> * 5000);

    mods.forestry.Carpenter.addRecipe(<forestry:impregnated_casing>, 
    [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:22>, <forestry:sturdy_machine>, <thermalfoundation:material:22>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]], 
    150, <liquid:seed.oil> * 1000);

    mods.forestry.Carpenter.addRecipe(<forestry:impregnated_casing>, 
    [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:22>, <forestry:sturdy_machine>, <thermalfoundation:material:22>],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]], 
    150, <liquid:oliveoil> * 1000);

    mods.forestry.Carpenter.addRecipe(<forestry:oak_stick>, 
    [[null, null, null],
    [null, <immersiveengineering:treated_wood>, null],
    [null, <immersiveengineering:treated_wood>, null]], 
    100, <liquid:seed.oil> * 150);

    mods.forestry.Carpenter.addRecipe(<forestry:oak_stick>, 
    [[null, null, null],
    [null, <immersiveengineering:treated_wood>, null],
    [null, <immersiveengineering:treated_wood>, null]], 
    100, <liquid:oliveoil> * 150);

    mods.forestry.ThermionicFabricator.addCast(<forestry:flexible_casing>,
    [[<minecraft:slime>, <minecraft:emerald>, <minecraft:slime>],
    [<thermalfoundation:material:292>, <forestry:sturdy_machine>, <thermalfoundation:material:292>],
    [<minecraft:slime>, <minecraft:emerald>, <minecraft:slime>]],
    <liquid:glass> * 1000); 


    print("Arcana Industrialis: Forestry script loaded.");