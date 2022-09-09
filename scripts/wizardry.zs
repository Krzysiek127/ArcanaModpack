import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded ebwizardry

    # Removed recipes

    var toDelete as IItemStack[] = [

        <ebwizardry:magic_wand>,
        <ebwizardry:arcane_workbench>
    ];

    for item in toDelete {
        recipes.remove(item);
    }


    recipes.addShapedMirrored("Magic Wand", <ebwizardry:magic_wand>, 
    [[null, <ore:dustEnergetic>, <ebwizardry:magic_crystal>],
    [null, <forestry:oak_stick>, <ore:dustEnergetic>],
    [<forbidden_arcanus:arcane_gold_nugget>, null, null]]);

    recipes.addShapedMirrored("Arcane Workbench", <ebwizardry:arcane_workbench>,
    [[<ebwizardry:magic_crystal>, <minecraft:carpet:10>, <ebwizardry:magic_crystal>],
    [<ore:blockLapis>, <ore:blockDiamond>, <ore:blockLapis>],
    [<ore:stone>, <ore:dustEnergetic>, <ore:stone>]]);

    recipes.addShaped("Arcana Core", <contenttweaker:arcana_core>,
    [[<ebwizardry:magic_crystal:5>, <ebwizardry:magic_crystal:2>, <ebwizardry:magic_crystal:4>],
    [<ebwizardry:magic_crystal:6>, <ore:dustMana>, <ebwizardry:magic_crystal:1>],
    [<ebwizardry:magic_crystal>, <ebwizardry:magic_crystal:3>, <ebwizardry:magic_crystal:7>]]);

    recipes.addShapedMirrored("Imbuement Altar", <ebwizardry:imbuement_altar>,
    [[<ore:itemEnderCrystalPowder>, <enderio:block_holier_fog>, <ore:itemEnderCrystalPowder>],
    [<quark:rune:16>, <contenttweaker:arcana_core>, <quark:rune:16>],
    [<ebwizardry:crystal_block>, <ore:compressed3xDustBedrock>, <ebwizardry:crystal_block>]]);


    print("Arcana Industrialis: EBWizardry script loaded.");