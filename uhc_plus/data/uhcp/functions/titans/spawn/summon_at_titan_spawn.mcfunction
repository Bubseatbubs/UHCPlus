execute if score @s uhcp_titans_count matches 1 at @s positioned ~ ~1 ~ run function uhcp:titans/arachne/init
execute if score @s uhcp_titans_count matches 2 at @s positioned ~ ~1 ~ run function uhcp:titans/gigantus/init
execute if score @s uhcp_titans_count matches 3 at @s positioned ~ ~1 ~ run function uhcp:titans/fenrir/init
execute if score @s uhcp_titans_count matches 4 at @s positioned ~ ~1 ~ run function uhcp:titans/bone_colossus/init
execute if score @s uhcp_titans_count matches 5 at @s positioned ~ ~1 ~ run function uhcp:titans/giga_creeper/init
execute if score @s uhcp_titans_count matches 6 at @s positioned ~ ~1 ~ run function uhcp:titans/triton/init
execute if score @s uhcp_titans_count matches 7 at @s positioned ~ ~1 ~ run function uhcp:titans/seraphim/init
execute if score @s uhcp_titans_count matches 8 at @s positioned ~ ~1 ~ run function uhcp:titans/ferrum/init
execute if score @s uhcp_titans_count matches 9 at @s positioned ~ ~1 ~ run function uhcp:titans/infernus/init
execute if score @s uhcp_titans_count matches 10 at @s positioned ~ ~1 ~ run function uhcp:titans/tyrion/init
execute if score @s uhcp_titans_count matches 11 at @s positioned ~ ~1 ~ run function uhcp:titans/gerald/init
execute if score @s uhcp_titans_count matches 12 at @s positioned ~ ~1 ~ run function uhcp:titans/gallie/init
fill ~-4 ~ ~-4 ~4 ~8 ~4 air replace barrier
playsound block.end_portal.spawn master @a[distance=..16] ~ ~ ~ 1 1 0.6
particle reverse_portal ~ ~ ~ 3 3 3 0.1 100 normal
particle flash ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
forceload remove ~-6 ~-6 ~6 ~6

tag @e remove UHCP_New

execute unless score @s uhcp_titans_count matches 11 run tellraw @a [{"text":"[","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_x1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_y1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_z1"},"color":"#9EE8FF","bold":false},{"text":"]","color":"dark_gray","bold":false}]
execute if score @s uhcp_titans_count matches 11 run tellraw @a [{"text":"[","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_x1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_y1"},"color":"#9EE8FF","bold":false},{"text":", ","color":"dark_gray","bold":false},{"score":{"name":"@s","objective":"uhcp_motion_z1"},"color":"#9EE8FF","bold":false},{"text":"] (Gerald Encounter)","color":"dark_gray","bold":false}]