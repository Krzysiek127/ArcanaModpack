import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;


val desert_pyramid = LootTweaker.getTable("enderio:chests/desert_pyramid");

val desert_pyramidE = desert_pyramid.getPool("Ender IO");

var Go_Away as string[] = [
    "enderio:item_dark_steel_sword:0",
    "enderio:item_travel_staff:0",
    "enderio:item_basic_capacitor:0",
    "enderio:item_material:13"
];

for elem in Go_Away {
    desert_pyramidE.removeEntry(elem);
}


val obelisk = LootTweaker.getTable("ebwizardry:chests/obelisk");

val obeliskT = obelisk.getPool("tombstone:chest_treasure");

var Fuck_Off as string[] = [
    "tombstone:crafting_ingredient",
    "tombstone:scroll_buff",
    "tombstone:scroll_of_knowledge",
    "tombstone:tablet_of_cupidity",
    "tombstone:tablet_of_home",
    "tombstone:tablet_of_assistance",
    "tombstone:voodoo_poppet",
    "tombstone:familiar_receptacle"
];

for elem in Fuck_Off {
    obeliskT.removeEntry(elem + '_loot');
}


val shrine = LootTweaker.getTable("ebwizardry:chests/shrine");

val shrineT = shrine.getPool("tombstone:chest_treasure");

var Fuck_You as string[] = [
    "tombstone:crafting_ingredient",
    "tombstone:scroll_buff",
    "tombstone:scroll_of_knowledge",
    "tombstone:tablet_of_cupidity",
    "tombstone:tablet_of_home",
    "tombstone:tablet_of_assistance",
    "tombstone:voodoo_poppet",
    "tombstone:familiar_receptacle"
];

for elem in Fuck_You {
    shrineT.removeEntry(elem + '_loot');
}