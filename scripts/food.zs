import crafttweaker.item.IItemStack;

// ------------- BREAD SECTION ------------- //
// Remove easier to make horsepower' dough
recipes.remove(<horsepower:dough>);

// And remove all furnace recipes for bread (can be made by smelting flour)
furnace.remove(<minecraft:bread>);

// And lastly add furnace recipe for bread made with harvestcraft dough
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>);

// ------------- END OF SECTION ------------- //

print('Man.. that comment looks like it was programmed in COBOL...');