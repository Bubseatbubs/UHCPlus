# Runs when player is hurt by Bow
advancement revoke @s only ssiege:player_hurt/by_bow
tag @s add SSIEGE_hurt_by_bow

# Augments
execute on attacker if score @s uhcp_augment matches 546 at @s run execute as @a[tag=SSIEGE_hurt_by_bow] run function ssiege:augments/effects/prismatic/expose_weakness/apply

tag @a remove SSIEGE_hurt_by_bow