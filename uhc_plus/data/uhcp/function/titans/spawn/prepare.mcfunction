execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.5 1
scoreboard players set %CONST_4 uhcp_titans_count 4
execute store result score %titan_radius uhcp_titans_count run worldborder get
scoreboard players operation %titan_radius uhcp_titans_count /= %CONST_4 uhcp_titans_count

execute store result storage uhcp:titan_radius radius.amount int 1 run scoreboard players get %titan_radius uhcp_titans_count