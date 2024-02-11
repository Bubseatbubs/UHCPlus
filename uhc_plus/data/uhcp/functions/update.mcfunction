# Updates a summoned entity

# Relics
execute if entity @s[tag=UHCP_Bee] at @s run function uhcp:augments/effects/gold/beekeeper/update
execute if entity @s[tag=UHCP_Scout] at @s unless entity @a[distance=..3] run function uhcp:augments/effects/silver/structurescout/clear
execute if entity @s[tag=UHCP_Saber] run return run function uhcp:relics/soulflame_saber/update
execute if entity @s[tag=UHCP_Voltrune] run return run function uhcp:relics/voltrune/update
execute if entity @s[tag=UHCP_GravitySmasher] run return run function uhcp:relics/gravity_smasher/update
execute if entity @s[tag=UHCP_GoldBlock] run return run function uhcp:relics/the_harvester/update
execute if entity @s[tag=UHCP_SCloneStand] run return run function uhcp:relics/smooth_getaway/update
execute if entity @s[tag=UHCP_DragonsProtection] run return run function uhcp:relics/dragons_protection/update


# Augments
execute if entity @s[tag=UHCP_Bee] at @s run return run function uhcp:augments/effects/gold/beekeeper/update

