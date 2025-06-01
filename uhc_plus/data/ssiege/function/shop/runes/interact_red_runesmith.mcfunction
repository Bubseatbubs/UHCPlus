advancement revoke @s only ssiege:red_runesmith_interact
execute if score %red ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"Your team has ","color":"white"},{"text":"not unlocked","bold":true,"color":"red"},{"text":" the ","color":"white"},{"text":"Runesmith","color":"light_purple"},{"text":" yet!","color":"white"}]

execute as @s run function ssiege:shop/runes/show_rune_shop