# Summon Mirages
execute positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/radiant/summon
execute positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/radiant/summon
execute positioned ~ ~ ~-1 run function uhcp:relics/smooth_getaway/radiant/summon
execute positioned ~ ~ ~1 run function uhcp:relics/smooth_getaway/radiant/summon

# End (UHCP_Owner removed in store_armor)
function uhcp:entity/armor/store_armor
tag @s add UHCP_SmoothGetaway
scoreboard players reset @s uhcp_leave
