import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

#modloaded railcraft

    // I don't trust <railcraft:plate:*>
    var toDelete as IItemStack[] = [
        <railcraft:plate>,
        <railcraft:plate:1>,
        <railcraft:plate:2>,
        <railcraft:plate:3>,
        <railcraft:plate:4>,
        <railcraft:plate:5>,
        <railcraft:plate:6>,
        <railcraft:plate:7>,
        <railcraft:plate:8>,
        <railcraft:plate:9>,
        <railcraft:plate:10>,
        <railcraft:plate:11>,
        <railcraft:gear>,
        <railcraft:gear:1>,
        <railcraft:gear:2>,
        <railcraft:gear:3>,
        <railcraft:gear:4>,
        <railcraft:gear:5>

    ];

    for item in toDelete {
        recipes.remove(item);
        rh(item);
    }