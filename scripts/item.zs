#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.ResourceLocation;
import mods.jei.JEI.removeAndHide as rh; 
import mods.contenttweaker.BlockMaterial;

// Arcana Core
var zsArcana_Core = VanillaFactory.createItem("arcana_core");
//zsArcana_Core.creativeTab = <creativetab:ebwizardry>;
zsArcana_Core.textureLocation = ResourceLocation.create("contenttweaker:items/arcana_core");
zsArcana_Core.glowing = true;

zsArcana_Core.register();

// Crafting Processor
var zsCraftCPU = VanillaFactory.createItem("crafting_processor");
zsCraftCPU.creativeTab = <creativetab:refinedstorage>;
zsCraftCPU.textureLocation = ResourceLocation.create("contenttweaker:items/crafting_processor");

// Raw crafting processor
var zsCraftCPU_raw = VanillaFactory.createItem("raw_crafting_processor");
zsCraftCPU_raw.creativeTab = <creativetab:refinedstorage>;
zsCraftCPU_raw.textureLocation = ResourceLocation.create("contenttweaker:items/raw_crafting_processor");

// Processor base
var zsCPU_base = VanillaFactory.createItem("processor_base");
zsCPU_base.creativeTab = <creativetab:refinedstorage>;
zsCPU_base.textureLocation = ResourceLocation.create("contenttweaker:items/processor_base");

zsCraftCPU_raw.register();
zsCraftCPU.register();
zsCPU_base.register();

/*  Changing Vaulterite ore to vaulterite dust
var zsVaulteriteOre = VanillaFactory.createBlock("vaulterite_ore", <blockmaterial:anvil>);
zsVaulteriteOre.creativeTab = <creativetab:buildingBlocks>;
zsVaulteriteOre.textureLocation = ResourceLocation.create("contenttweaker:blocks/vaulterite_ore");
zsVaulteriteOre.setBlockHardness(10);
zsVaulteriteOre.setToolClass("pickaxe");
zsVaulteriteOre.setToolLevel(4);
zsVaulteriteOre.setBlockSoundType(<soundtype:anvil>);
*/
var zsVaulteriteDust = VanillaFactory.createItem("vaulterite_dust");
zsVaulteriteDust.creativeTab = <creativetab:misc>;
zsVaulteriteDust.textureLocation = ResourceLocation.create("contenttweaker:items/vaulterite_dust");

var zsVaulteriteIngot = VanillaFactory.createItem("vaulterite_ingot");
zsVaulteriteIngot.creativeTab = <creativetab:misc>;
zsVaulteriteIngot.textureLocation = ResourceLocation.create("contenttweaker:items/vaulterite_ingot");

zsVaulteriteDust.register();
zsVaulteriteIngot.register();
/*  Vaulterite Blcok
var zsVaulteriteBlock = VanillaFactory.createBlock("vaulterite_block", <blockmaterial:anvil>);
zsVaulteriteBlock.creativeTab = <creativetab:buildingBlocks>;
zsVaulteriteOre.textureLocation = ResourceLocation.create("contenttweaker:blocks/walter");
zsVaulteriteBlock.setBlockHardness(10);
zsVaulteriteBlock.setToolClass("pickaxe");
zsVaulteriteBlock.setToolLevel(4);
zsVaulteriteBlock.setBlockSoundType(<soundtype:anvil>);
*/

//zsVaulteriteOre.register();
//zsVaulteriteBlock.register();

var zsEutVaultAlloy = VanillaFactory.createItem("eut_vault_alloy");
zsEutVaultAlloy.creativeTab = <creativetab:avaritia>;
zsEutVaultAlloy.textureLocation = ResourceLocation.create("contenttweaker:items/eutvault");
zsEutVaultAlloy.register();

var zsMoltenVaulterite = VanillaFactory.createFluid("vaulterite_molten", 0x889553);
zsMoltenVaulterite.density = 2450;
zsMoltenVaulterite.luminosity = 1;
zsMoltenVaulterite.temperature = 1830;
zsMoltenVaulterite.viscosity = 450;
zsMoltenVaulterite.register();

var zsGordonium = VanillaFactory.createItem("gordonium");
zsGordonium.creativeTab = <creativetab:avaritia>;
zsGordonium.textureLocation = ResourceLocation.create("contenttweaker:items/gordonium");

zsGordonium.register();


/*
var zsCrowbar = VanillaFactory.createItem("hl_crowbar");
zsCrowbar.textureLocation = ResourceLocation.create("contenttweaker:items/hl_crowbar");
zsCrowbar.creativeTab = <creativetab:combat>;
zsCrowbar.maxStackSize = 1;
zsCrowbar.rarity = "epic";
zsCrowbar.toolClass = "sword";

zsCrowbar.register();
*/

print("Arcana Industrialis: item script loaded.");
