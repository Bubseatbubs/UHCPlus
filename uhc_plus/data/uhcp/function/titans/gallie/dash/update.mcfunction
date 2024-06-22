scoreboard players add @s uhcp_timer 1
# execute if score @s uhcp_timer matches 32.. run return run tag @s remove UHCP_IsDashing

execute if score @s uhcp_timer matches ..14 run return 0
execute facing entity @n[tag=UHCP_GallieDashMarker] eyes run tp @s ^ ^ ^0.8 ~ ~
execute at @s unless entity @e[tag=UHCP_GallieDashMarker,distance=..0.5] run return 0
tag @s add UHCP_CurrentGallie
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..24] ~ ~ ~ 1 1 0.75
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..24] ~ ~ ~ 1 1 0.75
particle minecraft:lava ~ ~ ~ 2 0.25 2 0.1 100 normal
particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~ ~ 3 0.25 3 0.1 100 normal
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
execute as @e[tag=UHCP_GallieDashMarker] if score @s uhcp_game_id = @n[tag=UHCP_CurrentGallie] uhcp_game_id run kill @s
execute as @a[distance=..5] run damage @s 6 minecraft:mob_attack by @n[tag=UHCP_Gallie]
tag @s remove UHCP_CurrentGallie
scoreboard players reset @s uhcp_timer
scoreboard players add @s uhcp_titans_count 1
tag @s remove UHCP_IsDashing
execute if score @s uhcp_titans_count matches ..2 run function uhcp:titans/gallie/dash/init
scoreboard players reset @s[scores={uhcp_titans_count=3..}] uhcp_titans_count
