execute store result score %diff uhcp_settings run difficulty

execute if score %diff uhcp_settings matches 0 run tellraw @s [{"text":"Difficulty:","color":"white","bold":true},{"text":" Peaceful","color":"gray","bold":false}]
execute if score %diff uhcp_settings matches 1 run tellraw @s [{"text":"Difficulty:","color":"white","bold":true},{"text":" Easy","color":"gray","bold":false}]
execute if score %diff uhcp_settings matches 2 run tellraw @s [{"text":"Difficulty:","color":"white","bold":true},{"text":" Normal","color":"red","bold":false}]
execute if score %diff uhcp_settings matches 3 run tellraw @s [{"text":"Difficulty:","color":"white","bold":true},{"text":" Hard","color":"dark_red","bold":false}]

scoreboard players reset %diff uhcp_settings