import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh; 
#modloaded tconstruct

mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);

mods.tconstruct.Fuel.registerFuel(<liquid:corium>, 1300);

    var toRemove as IItemStack[] = [
        <tconstruct:cast_custom:3>,
        <tconstruct:cast_custom:4>
    ];

    for item in toRemove {
        mods.tconstruct.Casting.removeTableRecipe(item);
        rh(item);
        item.addTooltip(format.darkRed("This item is uncraftable"));
    }

    var rhRemove as IItemStack[] = [
        <tconstruct:slimesling:1>,
        <tconstruct:slimesling:2>,
        <tconstruct:slimesling:3>,
        <tconstruct:slimesling:4>,

        <tconstruct:slime_boots>,
        <tconstruct:slime_boots:1>,
        <tconstruct:slime_boots:2>,
        <tconstruct:slime_boots:3>,
        <tconstruct:slime_boots:4>
    ];
    for item in rhRemove {
        recipes.remove(item);
        rh(item);
    }

    for i in <ore:dustConstantan>.items {
        recipes.remove(i);
    }
    for i in <ore:dustElectrum>.items {
        recipes.remove(i);
    }
    
    recipes.remove(<tconstruct:slimesling>); // no rh
    recipes.addShapedMirrored("Slimesling", <tconstruct:slimesling>,
    [[<botania:manaresource:16>, <ore:blockSlime>, <botania:manaresource:16>],
    [<mod_lavacow:silky_sludge>, null, <mod_lavacow:silky_sludge>],
    [null, <ore:slimeball>, null]]);

    recipes.remove(<tconstruct:slime_boots>); // also
    recipes.addShapedMirrored("Slime Boots", <tconstruct:slime_boots>,
    [[null, null, null],
    [<mod_lavacow:silky_sludge>, <minecraft:leather_boots>, <mod_lavacow:silky_sludge>],
    [<ore:blockSlime>, null, <ore:blockSlime>]]);

    recipes.addShapedMirrored("EFLN", <tconstruct:throwball:1>,
    [[null, <ore:gunpowder>, null],
    [<ore:dustSulfur>, <ore:sand>, <ore:dustSulfur>],
    [null, <ore:gunpowder>, null]]);

print("Arcana Industrialis: Tinker script loaded!");