execute store result score @s uhcp_initStatus run clear @s cartography_table 0
execute if score @s uhcp_initStatus matches ..63 run return 0
scoreboard players set @s exalted_item_2 -1
tellraw @s ["",{"text":"[Exalted Adventure]","bold":true,"color":"aqua"},{"text":" You've collected enough "},{"text":"Cartography Tables","color":"yellow"},{"text":"!"}]
return 1