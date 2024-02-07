execute at @s positioned ~ ~ ~-1 run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~ ~ ~1 run function uhcp:relics/smooth_getaway/summon

execute as @e[tag=UHCP_New,type=wolf] run attribute @s generic.attack_damage base set 10