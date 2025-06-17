# Runs when player is hurt by PVP, >1 damage (no spam click attacks)
advancement revoke @s only ssiege:hurt_by_player
tag @s add SSIEGE_hurt_by_player

# Augments
execute on attacker if score @s uhcp_augment matches 369 at @s run execute as @a[tag=SSIEGE_hurt_by_player,distance=..5] run function ssiege:augments/effects/gold/thundercaller
execute on attacker if score @s uhcp_augment matches 535 at @s run execute as @a[tag=SSIEGE_hurt_by_player,distance=..5] run function ssiege:augments/effects/prismatic/meteor_shower

# Infernus Blessing
execute on attacker as @s[tag=SSIEGE_InfernusBlessing] at @s run execute as @a[tag=SSIEGE_hurt_by_player,distance=..5] run function ssiege:titans/infernus/infernus_blessing

tag @a remove SSIEGE_hurt_by_player