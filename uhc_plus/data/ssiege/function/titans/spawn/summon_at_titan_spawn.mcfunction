execute at @s[scores={uhcp_titans_count=1}] positioned ~ ~1 ~ run function uhcp:titans/arachne/init
execute at @s[scores={uhcp_titans_count=2}] positioned ~ ~1 ~ run function uhcp:titans/gigantus/init
execute at @s[scores={uhcp_titans_count=3}] positioned ~ ~1 ~ run function uhcp:titans/fenrir/init
execute at @s[scores={uhcp_titans_count=4}] positioned ~ ~1 ~ run function uhcp:titans/bone_colossus/init
execute at @s[scores={uhcp_titans_count=5}] positioned ~ ~1 ~ run function uhcp:titans/giga_creeper/init
execute at @s[scores={uhcp_titans_count=6}] positioned ~ ~1 ~ run function uhcp:titans/triton/init
execute at @s[scores={uhcp_titans_count=7}] positioned ~ ~1 ~ run function uhcp:titans/seraphim/init
execute at @s[scores={uhcp_titans_count=8}] positioned ~ ~1 ~ run function uhcp:titans/ferrum/init
execute at @s[scores={uhcp_titans_count=9}] positioned ~ ~1 ~ run function uhcp:titans/infernus/init
execute at @s[scores={uhcp_titans_count=10}] positioned ~ ~1 ~ run function uhcp:titans/tyrion/init
execute at @s[scores={uhcp_titans_count=11}] positioned ~ ~1 ~ run function uhcp:titans/gerald/init
execute at @s[scores={uhcp_titans_count=12}] positioned ~ ~1 ~ run function uhcp:titans/gallie/init
fill ~-4 ~ ~-4 ~4 ~8 ~4 minecraft:air replace minecraft:barrier
playsound minecraft:block.end_portal.spawn master @a[distance=..16] ~ ~ ~ 1 1 0.6
particle minecraft:reverse_portal ~ ~ ~ 3 3 3 0.1 100 normal
particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
forceload remove ~-6 ~-6 ~6 ~6

tag @e remove UHCP_New

execute unless score @s uhcp_titans_count matches 11 run tellraw @a [{"text":"[","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_x1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_y1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_z1"},"color":"#9EE8FF","bold":false},{"text":"]","color":"dark_gray","bold":false}]
execute if score @s uhcp_titans_count matches 11 run tellraw @a [{"text":"[","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_x1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_y1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_z1"},"color":"#9EE8FF","bold":false},{"text":"] (Gerald Encounter)","color":"dark_gray","bold":false}]
