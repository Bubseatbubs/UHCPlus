scoreboard players add @s uhcp_timer 1
# execute if score @s uhcp_timer matches 32.. run return run tag @s remove UHCP_IsDashing

execute if score @s uhcp_timer matches ..14 run return 0
execute facing entity @e[tag=UHCP_GallieDashMarker,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.8 ~ ~
execute at @s unless entity @e[tag=UHCP_GallieDashMarker,distance=..0.5] run return 0
tag @s add UHCP_CurrentGallie
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..24] ~ ~ ~ 1 1 0.75
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..24] ~ ~ ~ 1 1 0.75
particle minecraft:lava ~ ~ ~ 2 0.25 2 0.1 100 normal
particle minecraft:block{block_state: "minecraft:netherrack"} ~ ~ ~ 3 0.25 3 0.1 100 normal
particle minecraft:dust_plume ~ ~ ~ 1 1 1 1 100 normal
execute as @e[tag=UHCP_GallieDashMarker] if score @s uhcp_id = @e[tag=UHCP_CurrentGallie,sort=nearest,limit=1] uhcp_id run kill @s
execute as @a[distance=..5] run damage @s 6 mob_attack by @e[tag=UHCP_Gallie,sort=nearest,limit=1]
tag @s remove UHCP_CurrentGallie
scoreboard players reset @s uhcp_timer
scoreboard players add @s uhcp_titans_count 1
tag @s remove UHCP_IsDashing
execute if score @s uhcp_titans_count matches ..2 run function uhcp:titans/gallie/dash/init
execute if score @s uhcp_titans_count matches 3.. run scoreboard players reset @s uhcp_titans_count
