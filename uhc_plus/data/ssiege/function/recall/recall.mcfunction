execute as @s if score @s ssiege_recall_charge matches 1 run tellraw @s {text:"Channeling recall... (10 seconds)",color:light_purple}
execute as @s[team=blue] if score @s ssiege_recall_charge matches 200 run function ssiege:bases/teleport_blue
execute as @s[team=red] if score @s ssiege_recall_charge matches 200 run function ssiege:bases/teleport_red
execute as @s if score @s ssiege_recall_charge matches 200 run scoreboard players set @s ssiege_recall_charge -1