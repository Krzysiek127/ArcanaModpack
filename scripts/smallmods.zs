import crafttweaker.item.IItemStack;
#modloaded akashictome morphtool
import mods.jei.JEI.removeAndHide as rh; 
    # Removed recipes

    var toRemove as IItemStack[] = [
        <akashictome:tome>,
        <morphtool:tool>,
        <randomthings:timeinabottle>,
        <mod_lavacow:vespa_shield>,
        <mod_lavacow:reapers_scythe>,
        <openblocks:generic>,
        <travelersbackpack:backpack_tank>,
        <travelersbackpack:travelers_backpack>,
        <harvestcraft:wovencottonitem>,
        <projectred-core:resource_item:420>,
        <projectred-exploration:backpack:*>,
        <translocators:translocator_part>,
        <translocators:translocator_part:1>
    ];

    for item in toRemove {
        recipes.remove(item);
    }

    <ore:oc:circuitChip1>.remove(<opencomputers:material:7>);
    <ore:oc:circuitChip2>.remove(<opencomputers:material:8>);
    <ore:oc:circuitChip3>.remove(<opencomputers:material:9>);
    <ore:oc:materialTransistor>.remove(<opencomputers:material:6>);
    <ore:oc:materialCircuitBoardPrinted>.remove(<opencomputers:material:4>);
    
    <opencomputers:material:1>.addTooltip(format.red("GREG TECH!!1!!"));

    var toDelete as IItemStack[] = [
        <dungeontactics:stone_shield>,
        <dungeontactics:iron_shield>,
        <dungeontactics:silver_shield>,
        <dungeontactics:golden_shield>,
        <dungeontactics:steel_shield>,
        <dungeontactics:diamond_shield>,
        <dungeontactics:mithril_shield>,
        <mysticalworld:copper_helmet>,
        <mysticalworld:copper_chestplate>,
        <mysticalworld:copper_leggings>,
        <mysticalworld:copper_boots>,
        <mysticalworld:silver_helmet>,
        <mysticalworld:silver_chestplate>,
        <mysticalworld:silver_leggings>,
        <mysticalworld:silver_boots>,
        <abyssalcraft:crystalbag_small>,
        <abyssalcraft:crystalbag_medium>,
        <abyssalcraft:crystalbag_large>,
        <abyssalcraft:crystalbag_huge>,
        <opencomputers:material:7>,
        <opencomputers:material:8>,
        <opencomputers:material:9>,
        <opencomputers:material:6>,
        <opencomputers:material:4>,
        <dungeontactics:steel_dust>,
        <railcraft:brick_infernal>,
        <railcraft:blast_furnace>,
        <biomesoplenty:biome_finder>
    ];

    for item in toDelete {
        recipes.remove(item);
        rh(item);
    }
    

    recipes.addShapedMirrored("Knowledge Book", <minecraft:knowledge_book>,
    [[<ore:bookshelf>, <ebwizardry:magic_crystal>, <ore:bookshelf>],
    [<ore:gemAquamarine>, <ore:gemDiamond>, <ore:dustElectrotine>],
    [<ore:bookshelf>, <ore:gemAmber>, <ore:bookshelf>]]);

    recipes.addShapedMirrored("Akashic Tome", <akashictome:tome>.withTag({"akashictome:data": {industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short}, tconstruct: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, astralsorcery: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, immersiveengineering: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, engineersdecor: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "engineersdecor", "patchouli:book": "engineersdecor:engineersdecor_manual"}, Damage: 0 as short}, ebwizardry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "ebwizardry:wizard_handbook", Count: 1 as byte, tag: {"akashictome:definedMod": "ebwizardry"}, Damage: 0 as short}, rustic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rustic:book", Count: 1 as byte, tag: {"akashictome:definedMod": "rustic"}, Damage: 0 as short}, mysticalworld: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "mysticalworld", "patchouli:book": "mysticalworld:world_guide"}, Damage: 0 as short}, opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"}, Damage: 4 as short}, abyssalcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "abyssalcraft:necronomicon", Count: 1 as byte, tag: {"akashictome:definedMod": "abyssalcraft", PotEnergy: 0.0 as float}, Damage: 0 as short}, openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, forestry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "forestry:book_forester", Count: 1 as byte, tag: {"akashictome:definedMod": "forestry"}, Damage: 0 as short}, securitycraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "securitycraft:sc_manual", Count: 1 as byte, tag: {pages: [], "akashictome:definedMod": "securitycraft", author: "Geforce", title: "SecurityCraft"}, Damage: 0 as short}, nuclearcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "nuclearcraft", "patchouli:book": "nuclearcraft:guide"}, Damage: 0 as short}}}),
    [[<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>],
    [<minecraft:knowledge_book>, <minecraft:knowledge_book>, <minecraft:knowledge_book>],
    [<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>]]);

    recipes.addShapedMirrored("Morphing Tool", <morphtool:tool>,
    [[null, <ore:ingotVibrantAlloy>, <ore:ingotAstralStarmetal>],
    [null, <forestry:oak_stick>, <ore:ingotRedAlloy>],
    [<ore:stickTreatedWood>, null, null]]);

    recipes.addShapedMirrored("Time in a Bottle", <randomthings:timeinabottle>,
    [[null, <ore:dustEnergetic>, null],
    [<ore:dustDiamond>, <minecraft:clock>, <ore:dustDiamond>],
    [<dungeontactics:magic_powder>, <minecraft:experience_bottle>, <dungeontactics:magic_powder>]]);

    recipes.addShapedMirrored("Vespa Shield", <mod_lavacow:vespa_shield>,
    [[<mod_lavacow:vespa_carapace>,<mod_lavacow:poisonstinger>,<mod_lavacow:vespa_carapace>],
    [<mod_lavacow:vespa_carapace>,<minecraft:shield>,<mod_lavacow:vespa_carapace>],
    [<mod_lavacow:vespa_carapace>,<mod_lavacow:poisonstinger>,<mod_lavacow:vespa_carapace>]]);

    recipes.addShapedMirrored("Azrael's Scythe", <mod_lavacow:reapers_scythe>,
    [[<mod_lavacow:scythe_claw>,<thermalfoundation:material:1028>,<mod_lavacow:hatred_shard>],
    [<mod_lavacow:scythe_claw>,<forestry:oak_stick>,null],
    [<forestry:oak_stick>,null,null]]);

    recipes.addShapedMirrored("Glider Wing", <openblocks:generic>,
    [[null,<forestry:oak_stick>,<immersiveintelligence:material:27>],
    [<forestry:oak_stick>,<immersiveintelligence:material:27>,<immersiveintelligence:material:27>],
    [<immersiveintelligence:material:27>,<immersiveintelligence:material:27>,<immersiveintelligence:material:27>]]);

    recipes.addShapedMirrored("Backpack Tank", <travelersbackpack:backpack_tank>,
    [[<ore:fusedQuartz>,<mekanism:machineblock2:11>.withTag({tier: 0}),<ore:fusedQuartz>],
    [<ore:fusedQuartz>,<minecraft:bucket>,<ore:fusedQuartz>],
    [<ore:fusedQuartz>,<mekanism:machineblock2:11>.withTag({tier: 0}),<ore:fusedQuartz>]]);

    recipes.addShapedMirrored("Travelers Backpack", <travelersbackpack:travelers_backpack>,
    [[<immersiveintelligence:material:27>,<travelersbackpack:sleeping_bag_bottom>, <immersiveintelligence:material:27>],
    [<immersiveengineering:wooden_device0:5>,<projectred-exploration:backpack>,<avaritia:compressed_crafting_table>],
    [<travelersbackpack:backpack_tank>,<immersiveintelligence:material:27>,<travelersbackpack:backpack_tank>]]);

    recipes.addShapeless("Woven Cotton", <harvestcraft:wovencottonitem>,
    [<ore:string>, <ore:string>, <ore:string>]);

    recipes.addShapedMirrored("Woven Cloth", <projectred-core:resource_item:420>,
    [[<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
    [<harvestcraft:wovencottonitem>, <immersiveengineering:material>, <harvestcraft:wovencottonitem>],
    [<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>]]);

    recipes.addShapedMirrored("Backpack", <projectred-exploration:backpack>,
    [[<projectred-core:resource_item:420>, <ore:itemLeather>, <projectred-core:resource_item:420>],
    [<ore:itemLeather>, <immersiveengineering:wooden_device0>, <ore:itemLeather>],
    [<projectred-core:resource_item:420>, <ore:itemLeather>, <projectred-core:resource_item:420>]]);

    recipes.addShapedMirrored("Item Translocator", <translocators:translocator_part> * 2,
    [[<ebwizardry:transportation_stone>, <randomthings:stableenderpearl>, <ebwizardry:transportation_stone>],
    [<nuclearcraft:compound:2>, <ore:chestWood>, <nuclearcraft:compound:2>],
    [null, <thermaldynamics:servo:4>, null]]);

    recipes.addShapedMirrored("Liquid Translocator", <translocators:translocator_part:1> * 2,
    [[<ebwizardry:transportation_stone>, <randomthings:stableenderpearl>, <ebwizardry:transportation_stone>],
    [<nuclearcraft:compound:2>, <galacticraftcore:fluid_tank>, <nuclearcraft:compound:2>],
    [null, <thermaldynamics:servo:4>, null]]);

    recipes.addShapedMirrored("Bound Scroll", <waystones:bound_scroll>,
    [[<ore:dyePurple>, <ebwizardry:magic_silk>, <ore:dyePurple>],
    [<minecraft:dye>, <abyssalcraft:scroll>, <minecraft:dye>],
    [<ore:dyePurple>, <ebwizardry:magic_silk>, <ore:dyePurple>]]);

    recipes.addShapedMirrored("Warp Scroll", <waystones:warp_scroll>,
    [[<dungeontactics:magic_powder>, <ebwizardry:magic_silk>, <dungeontactics:magic_powder>],
    [<minecraft:dye>, <waystones:bound_scroll>, <minecraft:dye>],
    [<dungeontactics:magic_powder>, <ebwizardry:magic_silk>, <dungeontactics:magic_powder>]]);

    recipes.addShapedMirrored("Warp Stone", <waystones:warp_stone>,
    [[<ore:dyePurple>, <ore:gemAmethyst>, <ore:dyePurple>],
    [<ore:gemAmethyst>, <mekanism:teleportationcore>, <ore:gemAmethyst>],
    [<ore:dyePurple>, <ore:gemAmethyst>, <ore:dyePurple>]]);

    recipes.addShapedMirrored("Waystone", <waystones:waystone>,
    [[null, <forbidden_arcanus:arcane_base_block>, null],
    [<thaumcraft:stone_arcane>, <waystones:warp_stone>, <thaumcraft:stone_arcane>],
    [<forbidden_arcanus:arcane_base_block>, <forbidden_arcanus:arcane_base_block>, <forbidden_arcanus:arcane_base_block>]]);
    
    print("Arcana Industrialis: small mods script loaded.");