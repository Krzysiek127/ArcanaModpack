import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.immersiveintelligence.ChemicalBath;
import crafttweaker.oredict.IOreDict;
#modloaded immersiveengineering
#modloaded contenttweaker
#modloaded enderio
#modloaded nuclearcraft
#modloaded mekanism
#modloaded thermalexpansion

<contenttweaker:vaulterite_dust>.addShiftTooltip('We need to cook neutronium!', 'Jesse, We need to cook!');
//<ore:oreVaulterite>.add(<contenttweaker:vaulterite_ore>);

mods.thermalexpansion.Refinery.addRecipe(<liquid:sewage> * 15, <contenttweaker:vaulterite_dust> % 1 , <liquid:bacterialsludge> * 4000, 58795);

# ====== FIRST STEP - ARCING ====== #

// One hour, 35 minutes and 32 seconds or 1 Shrek unit 
// https://www.urbandictionary.com/define.php?term=Shrek%20%28unit%20of%20time%29

// and 5120 RF / t
// equals ... 35.217.408.000 RFs IN TOTAL !!

var shrekUnit = (1 * 3600) + (35 * 60) + 32; // seconds

mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:eut_vault_alloy>, <contenttweaker:vaulterite_dust> * 64, <minecraft:glowstone_dust>, shrekUnit * 20, 5120, [<minecraft:diamond_block> * 32, <opencomputers:material:1> * 32]);
<contenttweaker:eut_vault_alloy>.addShiftTooltip('1h 35 min and 32 sec (The Shrek unit) * 5120 RF/t equals over 35 billion RFs!', 'Press shift for ' + format.red('Energy cost'));

# ================================== #
# ====== SECOND STEP - VATING ====== #

// Corium + (2 Borax + 1 Eutectic Vaulterite Alloy) + 69420 RFs = Molten Vaulterite
mods.enderio.Vat.addRecipe(<liquid:vaulterite_molten>, <liquid:corium>, [<ore:dustBorax>], [8], [<contenttweaker:eut_vault_alloy>], [1], 69420);

# ================================== #
# ====== THIRD STEP - BATHING ======= #

// 16 minutes
//mods.mekanism.reaction.addRecipe(<ore:ingotZirconiumMolybdenum> * 8, <liquid:vaulterite_molten> * 8000, <gas:tritium>, <contenttweaker:vaulterite_ingot>, <gas:brine> * 5, 69420, 16 * 60 * 20);
mods.immersiveintelligence.ChemicalBath.addRecipe(<ore:ingotZirconiumMolybdenum> * 16, <contenttweaker:vaulterite_ingot>, <liquid:vaulterite_molten> * 8000, 3500, 2000);

# ================================== #
# ====== FOURTH STEP - COMBINE ===== #

mods.mekanism.combiner.addRecipe(<contenttweaker:vaulterite_ingot>, <nuclearcraft:depleted_fuel_californium:15> * 16, <contenttweaker:gordonium>);
<contenttweaker:gordonium>.addTooltip(format.gold('Highly unstable; has short Half-Life'));
mods.nuclearcraft.Radiation.setRadiationLevel(<contenttweaker:gordonium>, 69);  // 69 Rads / tick

# ================================== #

mods.mekanism.enrichment.addRecipe(<contenttweaker:gordonium>, <avaritia:resource:3>);