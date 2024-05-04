advancement revoke @s only uhcp:relics/smooth_getaway/finish
function uhcp:entity/armor/load_armor
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
tag @s remove UHCP_SmoothGetaway
execute if entity @s[tag=UHCP_MirrorImage] run return run tag @s remove UHCP_MirrorImage
execute if entity @s[tag=UHCP_ShadowClone] run return run function uhcp:relics/smooth_getaway/return_shadowclone
function uhcp:entity/items/loot/summon
loot replace entity @e[type=item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:relics/smooth_getaway/damaged
function uhcp:entity/items/loot/finish
