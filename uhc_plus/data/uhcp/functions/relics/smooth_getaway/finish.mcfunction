advancement revoke @s only uhcp:relics/smooth_getaway/finish
function uhcp:entity/armor/load_armor
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
tag @s remove UHCP_SmoothGetaway
execute if score @s uhcp_augment matches 239 run return run loot give @s loot uhcp:relics/smooth_getaway/damaged_shadow_ninjitsu
loot give @s loot uhcp:relics/smooth_getaway/damaged

