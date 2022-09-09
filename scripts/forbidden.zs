import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded forbidden_arcanus

    var removeRecipe as IItemStack[] = [
        <forbidden_arcanus:obsidian_skull>,
        <forbidden_arcanus:obsidian_skull_shield>,
        <forbidden_arcanus:dark_nether_star>,
        <forbidden_arcanus:silver_dragon_scale>,
        <forbidden_arcanus:arcane_gold_ingot>,
        <forbidden_arcanus:golden_dragon_scale>,
        <forbidden_arcanus:mundabitur_dust>,
        <forbidden_arcanus:aquatic_dragon_scale>,
        <forbidden_arcanus:draco_arcanus_staff>,
        <forbidden_arcanus:cloth>,
        <forbidden_arcanus:mortem_helmet>,
        <forbidden_arcanus:mortem_chestplate>,
        <forbidden_arcanus:mortem_leggings>,
        <forbidden_arcanus:mortem_boots>
        
    ];

    for item in removeRecipe {
        recipes.remove(item);
    }


    recipes.addShaped("Obsidian Skull", <forbidden_arcanus:obsidian_skull>,
    [[<forbidden_arcanus:obsidian_ingot>, <twilightforest:fiery_blood>, <forbidden_arcanus:obsidian_ingot>],
    [<mekanism:compressedobsidian>, <forbidden_arcanus:skull>, <mekanism:compressedobsidian>],
    [<forbidden_arcanus:obsidian_ingot>, <twilightforest:fiery_tears>, <forbidden_arcanus:obsidian_ingot>]]);

    recipes.addShaped("Obsidian Skull Shield", <forbidden_arcanus:obsidian_skull_shield>,
    [[<ore:platePlatinum>, <forbidden_arcanus:silver_dragon_scale>, <ore:platePlatinum>],
    [<forbidden_arcanus:silver_dragon_scale>, <forbidden_arcanus:obsidian_skull>, <forbidden_arcanus:silver_dragon_scale>],
    [null, <ore:platePlatinum>, null]]);

    recipes.addShaped("Dark Nether Star", <forbidden_arcanus:dark_nether_star>,
    [[<botania:blacklotus>, <forbidden_arcanus:dark_matter>, <thaumcraft:nugget:7>],
    [<forbidden_arcanus:dark_matter>, <minecraft:nether_star>, <forbidden_arcanus:dark_matter>],
    [<thaumcraft:nugget:7>, <forbidden_arcanus:dark_matter>, <botania:blacklotus>]]);

    recipes.addShaped("Silver Dragon Scale", <forbidden_arcanus:silver_dragon_scale>,
    [[<forbidden_arcanus:arcane_crystal_dust>, <ore:ingotSilver>, <ore:nuggetSilver>],
    [<ore:ingotSilver>, <forbidden_arcanus:dragon_scale>, <ore:ingotSilver>],
    [<forbidden_arcanus:arcane_crystal_dust>, <ore:ingotSilver>, <forbidden_arcanus:arcane_crystal_dust>]]);

    recipes.addShaped("Arcane Gold Ingot", <forbidden_arcanus:arcane_gold_ingot>,
    [[<forbidden_arcanus:arcane_crystal_dust>, <thaumcraft:salis_mundus>, <forbidden_arcanus:arcane_crystal_dust>],
    [<forbidden_arcanus:mundabitur_dust>, <ore:ingotGold>, <forbidden_arcanus:mundabitur_dust>],
    [<forbidden_arcanus:arcane_crystal_dust>, <thaumcraft:salis_mundus>, <forbidden_arcanus:arcane_crystal_dust>]]);

    recipes.addShaped("Golden Dragon Scale", <forbidden_arcanus:golden_dragon_scale>,
    [[<forbidden_arcanus:arcane_crystal_dust>, <forbidden_arcanus:arcane_gold_ingot>, <forbidden_arcanus:arcane_gold_nugget>],
    [<forbidden_arcanus:arcane_gold_ingot>, <forbidden_arcanus:dragon_scale>, <forbidden_arcanus:arcane_gold_ingot>],
    [<forbidden_arcanus:arcane_crystal_dust>, <forbidden_arcanus:arcane_gold_ingot>, <forbidden_arcanus:arcane_crystal_dust>]]);

    recipes.addShaped("Mundabitur Dust", <forbidden_arcanus:mundabitur_dust> * 2,
    [[<minecraft:dye:15>, <ore:itemGhastTear>, <minecraft:dye:15>],
    [<ore:gemPrismarine>, <forbidden_arcanus:arcane_crystal_dust>, <ore:gemPrismarine>],
    [<ore:dustPrismarine>, <ore:itemGhastTear>, <ore:dustPrismarine>]]);

    recipes.addShaped("Aquatic Dragon Scale", <forbidden_arcanus:aquatic_dragon_scale>,
    [[<forbidden_arcanus:arcane_crystal_dust>, <ore:gemPrismarine>, <ore:dustPrismarine>],
    [<ore:gemPrismarine>, <forbidden_arcanus:dragon_scale>, <ore:gemPrismarine>],
    [<forbidden_arcanus:arcane_crystal_dust>, <ore:gemPrismarine>, <forbidden_arcanus:arcane_crystal_dust>]]);

    recipes.addShaped("Draco Arcanus Staff", <forbidden_arcanus:draco_arcanus_staff>,
    [[null, <forbidden_arcanus:obsidian_ingot>, <forbidden_arcanus:dragon_scale>],
    [<forbidden_arcanus:obsidian_ingot>, <mekanism:compressedobsidian>, <forbidden_arcanus:obsidian_ingot>],
    [<botania:manaresource:1>, <forbidden_arcanus:obsidian_ingot>, null]]);

    recipes.addShaped("Cloth", <forbidden_arcanus:cloth>,
    [[null, <ore:blockWool>, null],
    [<ore:string>, <botania:manaresource:16>, <ore:string>],
    [null, <ore:blockWool>, null]]);

    recipes.addShaped("Mortem Helmet", <forbidden_arcanus:mortem_helmet>,
    [[<forbidden_arcanus:cloth>, <forbidden_arcanus:cloth>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:cloth>, <forbidden_arcanus:obsidian_helmet>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:dark_rune>, <forbidden_arcanus:skull>, <forbidden_arcanus:dark_rune>]]);

    recipes.addShaped("Mortem Chestplate", <forbidden_arcanus:mortem_chestplate>,
    [[<forbidden_arcanus:dark_rune>, null, <forbidden_arcanus:dark_rune>],
    [<forbidden_arcanus:cloth>, <forbidden_arcanus:obsidian_shoulder_pads>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:cloth>, <ore:bone>, <forbidden_arcanus:cloth>]]);

    recipes.addShaped("Mortem Leggings", <forbidden_arcanus:mortem_leggings>,
    [[<forbidden_arcanus:cloth>, <ore:bone>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:cloth>, <forbidden_arcanus:obsidian_knee_pads>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:dark_rune>, null, <forbidden_arcanus:dark_rune>]]);

    recipes.addShaped("Mortem boots", <forbidden_arcanus:mortem_boots>,
    [[null, <ore:bone>, null],
    [<forbidden_arcanus:cloth>, <forbidden_arcanus:obsidian_boots>, <forbidden_arcanus:cloth>],
    [<forbidden_arcanus:dark_rune>, null, <forbidden_arcanus:dark_rune>]]);

    print("Arcana Industrialis: Forbidden & Arcanus script loaded.");