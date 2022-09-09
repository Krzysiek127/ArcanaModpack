import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

#modloaded refinedstorage
#modloaded enderio
#modloaded thermalexpansion

    # Removed recipes

    var toDelete as IItemStack[] = [

        <refinedstorage:machine_casing>,
        <refinedstorage:controller>,
        <refinedstorage:cable>,
        <refinedstorage:grid>,      // normal
        <refinedstorage:grid:1>,    // crafting
        <refinedstorage:grid:2>,    // pattern
        <refinedstorage:grid:3>,    // fluid
        <refinedstorage:crafting_monitor>,
        <refinedstorage:importer>,
        <refinedstorage:exporter>,
        <refinedstorage:storage_monitor>,
        <refinedstorage:network_transmitter>,
        <refinedstorage:network_receiver>,
        <refinedstorage:core>,
        <refinedstorage:core:1>,
        <refinedstorage:crafter>,
        <thermalexpansion:augment:368>,
        <refinedstorage:processor>,
        <refinedstorage:processor:1>,
        <refinedstorage:processor:2>
    ];
    
    for item in toDelete {
        recipes.remove(item);
    }
    
    rh(<refinedstorage:machine_casing>);

    furnace.remove(<refinedstorage:processor:3>, <refinedstorage:processor>);
    furnace.remove(<refinedstorage:processor:4>, <refinedstorage:processor:1>);
    furnace.remove(<refinedstorage:processor:5>, <refinedstorage:processor:2>);
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(<refinedstorage:processor>);
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(<refinedstorage:processor:1>);
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(<refinedstorage:processor:2>);
    mods.enderio.AlloySmelter.removeRecipe(<refinedstorage:processor:3>);
    mods.enderio.AlloySmelter.removeRecipe(<refinedstorage:processor:4>);
    mods.enderio.AlloySmelter.removeRecipe(<refinedstorage:processor:5>);


    recipes.addShaped("Processor Base", <contenttweaker:processor_base>,
    [[<ore:itemSilicon>, <refinedstorage:processor_binding>, <ore:itemSilicon>],
    [<refinedstorage:processor_binding>, <ore:ingotRedAlloy>, <refinedstorage:processor_binding>],
    [<ore:itemSilicon>, <refinedstorage:processor_binding>, <ore:itemSilicon>]]);

    recipes.addShapedMirrored("Controller", <refinedstorage:controller>.withTag({Energy: 0}),
    [[<projectred-core:resource_item:301>, <ore:circuitBasic>, <projectred-core:resource_item:301>],
    [<refinedstorage:processor:5>, <mekanism:basicblock:8>, <refinedstorage:processor:5>],
    [<projectred-core:resource_item:301>, <ore:circuitBasic>, <projectred-core:resource_item:301>]]);

    recipes.addShaped("Grid", <refinedstorage:grid>,
    [[<ore:itemSilicon>, <refinedstorage:core>, <ore:itemSilicon>],
    [<ore:circuitBasic>, <mekanism:basicblock:8>, <projectred-core:resource_item:513>],
    [<ore:itemSilicon>, <refinedstorage:core:1>, <ore:itemSilicon>]]);

    recipes.addShaped("Crafting Grid", <refinedstorage:grid:1>,
    [[<ore:itemSilicon>, <ore:circuitBasic>, <ore:itemSilicon>],
    [<refinedstorage:processor:5>, <refinedstorage:grid>, <refinedstorage:processor:5>],
    [<refinedstorage:quartz_enriched_iron>, <contenttweaker:crafting_processor>, <refinedstorage:quartz_enriched_iron>]]);

    recipes.addShaped("Cable", <refinedstorage:cable> * 8,
    [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
    [<ore:blockGlass>, <ore:projredIllumar>, <ore:blockGlass>],
    [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>]]);

    recipes.addShaped("Pattern Grid", <refinedstorage:grid:2>,
    [[<ore:itemSilicon>, <ore:circuitBasic>, <ore:itemSilicon>],
    [<refinedstorage:processor:5>, <refinedstorage:grid>, <refinedstorage:processor:5>],
    [<ore:itemSilicon>, <refinedstorage:pattern>, <ore:itemSilicon>]]);

    recipes.addShaped("Fluid Grid", <refinedstorage:grid:3>,
    [[<ore:itemSilicon>, <ore:circuitBasic>, <ore:itemSilicon>],
    [<refinedstorage:processor:5>, <refinedstorage:grid>, <refinedstorage:processor:5>],
    [<ore:itemSilicon>, <minecraft:bucket>, <ore:itemSilicon>]]);

    recipes.addShaped("Crafting Monitor", <refinedstorage:crafting_monitor>,
    [[<refinedstorage:processor:4>, <ore:circuitBasic>, <projectred-core:resource_item:514>],
    [<refinedstorage:pattern>, <mekanism:basicblock:8>, <projectred-core:resource_item:513>],
    [<refinedstorage:processor:4>, <ore:circuitBasic>, <projectred-core:resource_item:511>]]);

    recipes.addShaped("Storage Monitor", <refinedstorage:storage_monitor>,
    [[<refinedstorage:processor:4>, <ore:circuitBasic>, <projectred-core:resource_item:514>],
    [<refinedstorage:processor:5>, <mekanism:basicblock:8>, <projectred-core:resource_item:513>],
    [<refinedstorage:processor:4>, <ore:circuitBasic>, <projectred-core:resource_item:511>]]);

    recipes.addShaped("Exporter", <refinedstorage:exporter>,
    [[null, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>],
    [<ore:circuitBasic>, <refinedstorage:cable>, <refinedstorage:core>],
    [null, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>]]);
    
    recipes.addShaped("Importer", <refinedstorage:importer>,
    [[null, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>],
    [<ore:circuitBasic>, <refinedstorage:cable>, <refinedstorage:core:1>],
    [null, <refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>]]);

    recipes.addShaped("Network Transmitter", <refinedstorage:network_transmitter>,
    [[<refinedstorage:processor:5>, <thermalfoundation:material:514>, <refinedstorage:processor:5>],
    [<refinedstorage:core:1>, <mekanism:basicblock:8>, <refinedstorage:core>],
    [<refinedstorage:processor:5>, <mekanism:teleportationcore>, <refinedstorage:processor:5>]]);

    recipes.addShaped("Network Receiver", <refinedstorage:network_receiver>,
    [[<refinedstorage:processor:5>, <thermalfoundation:material:513>, <refinedstorage:processor:5>],
    [<refinedstorage:core:1>, <mekanism:basicblock:8>, <refinedstorage:core>],
    [<refinedstorage:processor:5>, <mekanism:teleportationcore>, <refinedstorage:processor:5>]]);

    recipes.addShaped("Crafter", <refinedstorage:crafter>,
    [[<ore:circuitAdvanced>, <ore:circuitBasic>, <ore:circuitAdvanced>],
    [<refinedstorage:core>, <mekanism:basicblock:8>, <contenttweaker:crafting_processor>],
    [<ore:circuitAdvanced>, <ore:circuitBasic>, <ore:circuitAdvanced>]]);


    print("Arcana Industrialis: Refined Storage script loaded.");