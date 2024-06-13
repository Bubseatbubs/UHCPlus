execute at @s positioned ~ ~ ~-1 run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~ ~ ~1 run function uhcp:relics/smooth_getaway/summon

execute as @e[tag=UHCP_New,type=minecraft:wolf] run attribute @s minecraft:generic.attack_damage base set 10
tag @s add UHCP_ShadowClone
