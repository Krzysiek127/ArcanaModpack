import crafttweaker.item.IItemStack;

recipes.remove(<minecraft:shield>);

recipes.addShapedMirrored("Shield", <minecraft:shield>,
[[<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
[<ore:plankWood>, <ore:logWood>, <ore:plankWood>],
[null, <ore:plateIron>, null]]);


<minecraft:iron_sword>.addTooltip(format.red(format.italic("Gordon Freeman transformed this iron sword into a Crowbar")));

print("Arcana Industrialis: Vanilla script loaded.");