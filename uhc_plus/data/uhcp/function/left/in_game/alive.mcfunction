# Augment selection status
execute if score %augment_countdown uhcp_game_time matches 1.. run return run execute unless score %tier uhcp_aug_tier matches -1 run bossbar set uhcp:augment players @a
execute as @s[gamemode=adventure] run function uhcp:left/in_game/start/augment
