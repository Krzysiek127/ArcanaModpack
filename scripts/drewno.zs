# Osobny script bo nie chce zabałaganić
import crafttweaker.item.IItemStack;
#modloaded thermalexpansion

/*
function getItemByRegex(modId as string, registryName as string) as IItemStack {
	return itemUtils.getItem(modId + ":" + registryName);
}

function planksFromLogs(mod as string, woodTypes as string[]) as void {
	for type in woodTypes {
		var log  = getItemByRegex(mod, type + "_log");
		var plan = getItemByRegex(mod, type + "_planks");

		#mods.thermalexpansion.Sawmill.removeRecipe(log);

		mods.thermalexpansion.Sawmill.addRecipe(plan * 6, log, 1500, <thermalfoundation:material:800>, 100);
	}
}

//Usage
planksFromLogs("minecraft", [
	"oak",
	"jungle",
	"birch",
	"spruce"
]);
*/

for i in 0 to 16 {
	mods.thermalexpansion.Sawmill.addRecipe(itemUtils.getItem("minecraft:planks", i) * 6, itemUtils.getItem("minecraft:log", i), 1500, <thermalfoundation:material:800>, 100);
}

# Edge cases of acacia and dark oak
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:4> * 6, <minecraft:log2>, 1500, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:5> * 6, <minecraft:log2:1>, 1500, <thermalfoundation:material:800>, 100);

val logConvArray = {
	<biomesoplenty:log_2:4> : <biomesoplenty:planks_0:8>, 	// Redwood
	<biomesoplenty:log_1:7> : <biomesoplenty:planks_0:7>, 	// Palm
	<biomesoplenty:log_1:6> : <biomesoplenty:planks_0:6>, 	// Mangrove
	<biomesoplenty:log_1:5> : <biomesoplenty:planks_0:5>, 	// Magic
	<biomesoplenty:log_1:4> : <biomesoplenty:planks_0:4>, 	// Ethearal
	<biomesoplenty:log_0:7> : <biomesoplenty:planks_0:3>, 	// Fir
	<biomesoplenty:log_0:6> : <biomesoplenty:planks_0:2>, 	// Umbran
	<biomesoplenty:log_0:5> : <biomesoplenty:planks_0:1>, 	// Cherry
	<biomesoplenty:log_0:4> : <biomesoplenty:planks_0>,	  	// Sacred
	<biomesoplenty:log_2:5> : <biomesoplenty:planks_0:9>, 	// Willow
	<biomesoplenty:log_2:6> : <biomesoplenty:planks_0:10>,	// Pine
	<biomesoplenty:log_2:7> : <biomesoplenty:planks_0:11>,	// Hellbark
	<biomesoplenty:log_3:4> : <biomesoplenty:planks_0:12>,	// Jacaranda
	<biomesoplenty:log_3:5> : <biomesoplenty:planks_0:13>,	// Mahogany
	<biomesoplenty:log_3:6> : <biomesoplenty:planks_0:14>,	// Ebony
	<biomesoplenty:log_3:7> : <biomesoplenty:planks_0:15>	// Eucalyptus

} as IItemStack[IItemStack];

for key, value in logConvArray {
	mods.thermalexpansion.Sawmill.addRecipe(value * 6, key, 1500, <thermalfoundation:material:800>, 100);
}