import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient;

#modloaded enderio
#modloaded thermalexpansion
#modloaded nuclearcraft
#modloaded tconstruct

    # Removed recipes

    var toRemove as IItemStack[] = [
        <enderio:item_material:9>,
        <enderio:item_material:10>,
        <enderio:item_material:65>,
        <enderio:item_material:71>,
        <enderio:item_material>,
        <enderio:item_material:6>,
        <enderio:item_material:15>,
        <enderio:item_material:14>
    ];

    for item in toRemove {
        recipes.remove(item);
    }

    rh(<enderio:item_material:9>);
    rh(<enderio:item_material:10>);

    recipes.removeByRecipeName("enderio:gear_stone");
    recipes.removeByRecipeName("enderio:gear_stone_upgrade");

    mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:14>);
    mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<enderio:item_material:15>);
    mods.enderio.AlloySmelter.removeRecipe(<railcraft:ingot>);

    mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:15>, <liquid:vibrant_alloy>);

    mods.tconstruct.Casting.addTableRecipe(<enderio:item_material:15>, <tconstruct:materials:16>, <liquid:vibrant_alloy>, 576, true);

    mods.enderio.AlloySmelter.removeRecipe(<enderio:item_dark_steel_upgrade>);
    mods.enderio.AlloySmelter.addRecipe(<enderio:item_dark_steel_upgrade>, [<enderio:block_dark_iron_bars> * 4, <ore:string> * 6, <tconstruct:cast>]);

    mods.enderio.AlloySmelter.addRecipe(<immersiveintelligence:material_ingot> * 3, [<ore:ingotPlatinum>, <ore:ingotConstantan> * 3, <ore:ingotElectrum>]);
    
    recipes.addShapedMirrored("Wireless Energy Transmitter Dish Assembly", <enderio:item_material:65>,
    [[<ore:ingotElectricalSteel>, <thermalfoundation:material:514>, <ore:ingotElectricalSteel>],
    [<ore:dyeWhite>, <ore:ingotElectricalSteel>, <ore:dyeWhite>],
    [null, <enderio:item_material:71>, null]]);

    recipes.addShapedMirrored("Infinity Rod", <enderio:item_material:71>,
    [[null, <ore:nuggetDarkSteel>, <enderio:block_infinity_fog>],
    [<ore:nuggetDarkSteel>, <forestry:oak_stick>, <ore:nuggetDarkSteel>],
    [<enderio:block_infinity_fog>, <ore:nuggetDarkSteel>, null]]);

    recipes.addShapedMirrored("Simple Machine Chassis", <enderio:item_material>,
    [[<ore:barsIron>, <ore:dustBedrock>, <ore:barsIron>],
    [<ore:alloyAdvanced>, <immersiveengineering:metal_decoration0:5>, <ore:alloyAdvanced>],
    [<ore:barsIron>, <ore:dustBedrock>, <ore:barsIron>]]);

    recipes.addShapedMirrored("Glider Wing", <enderio:item_material:6>,
    [[null, null, <enderio:item_alloy_nugget:6>],
    [null, <enderio:item_alloy_nugget:6>, <immersiveintelligence:material:27>],
    [<enderio:item_alloy_nugget:6>, <immersiveintelligence:material:27>, <openblocks:generic>]]);

    recipes.addShapedMirrored("Enchanter", <enderio:block_enchanter>,
    [[<enderio:item_xp_transfer>, <openblocks:auto_enchantment_table>, <enderio:item_xp_transfer>],
    [<thaumcraft:stone_arcane>, <enderio:block_dark_steel_anvil>, <thaumcraft:stone_arcane>],
    [null, <thaumcraft:stone_arcane>, null]]);
    
    // SILICON

    <ore:itemSilicon>.remove(<galacticraftcore:basic_item:2>);


    // Thank you, random github thread

    // Nie może być null musi być cokolwiek innego
    var allSaws = <notreepunching:saw/iron> as IIngredient;

    for item in <ore:toolSaw>.items {
        if ( isNull(allSaws) ) {
            allSaws = item.anyDamage();
        } else {
            allSaws |= item.anyDamage();
        }
    }

    recipes.addShapeless("Silicon", <enderio:item_material:5> * 3, [<immersiveintelligence:material_boule>, allSaws]);

    furnace.addRecipe(<immersiveintelligence:material_boule>, <ore:dustQuartz>);
    furnace.addRecipe(<immersiveintelligence:material_boule>, <galacticraftcore:basic_item:2>);

    mods.thermalexpansion.Sawmill.addRecipe(<enderio:item_material:5> * 4, <immersiveintelligence:material_boule>, 2000, <enderio:item_material:5>, 25);
    mods.mekanism.sawmill.addRecipe(<immersiveintelligence:material_boule>, <enderio:item_material:5> * 4, <minecraft:string>, 0.2);

    print("Arcana Industrialis: EnderIO script loaded.");