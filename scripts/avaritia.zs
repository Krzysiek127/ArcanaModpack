import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded avaritia

    # Removed recipes

    var toDelete as IItemStack[] = [

        <avaritia:extreme_crafting_table>
    ];
    
    for item in toDelete {
        recipes.remove(item);
    }


    # for now I replaced betweenlands workbench with normal workbench
    recipes.addShapedMirrored("Extreme Crafting Table", <avaritia:extreme_crafting_table>,
    [[<engineersdecor:treated_wood_crafting_table>, <ebwizardry:imbuement_altar>, <galacticraftcore:magnetic_table>],
    [<avaritia:double_compressed_crafting_table>, <avaritia:block_resource:2>, <avaritia:double_compressed_crafting_table>],
    [<twilightforest:uncrafting_table>, <astralsorcery:blockaltar:3>, <minecraft:crafting_table>]]);

print("Arcana Industrialis: Avaritia script loaded");