playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1 1

execute as @s[team=blue] if score %blue ssiege_perk_recall matches 1 run scoreboard players set @s ssiege_recall_charge 200
execute as @s[team=blue] if score %blue ssiege_perk_recall matches 1 run tellraw @s {text:"Channeling recall for 10 seconds...",color:light_purple}
execute as @s[team=red] if score %red ssiege_perk_recall matches 1 run scoreboard players set @s ssiege_recall_charge 200
execute as @s[team=red] if score %red ssiege_perk_recall matches 1 run tellraw @s {text:"Channeling recall for 10 seconds...",color:light_purple}

execute as @s[team=blue] if score %blue ssiege_perk_recall matches 2 run scoreboard players set @s ssiege_recall_charge 160
execute as @s[team=blue] if score %blue ssiege_perk_recall matches 2 run tellraw @s {text:"Channeling recall for 8 seconds...",color:light_purple}
execute as @s[team=red] if score %red ssiege_perk_recall matches 2 run scoreboard players set @s ssiege_recall_charge 160
execute as @s[team=red] if score %red ssiege_perk_recall matches 2 run tellraw @s {text:"Channeling recall for 8 seconds...",color:light_purple}

execute as @s[team=blue] if score %blue ssiege_perk_recall matches 3.. run scoreboard players set @s ssiege_recall_charge 120
execute as @s[team=blue] if score %blue ssiege_perk_recall matches 3 run tellraw @s {text:"Channeling recall for 6 seconds...",color:light_purple}
execute as @s[team=red] if score %red ssiege_perk_recall matches 3.. run scoreboard players set @s ssiege_recall_charge 120
execute as @s[team=red] if score %red ssiege_perk_recall matches 3 run tellraw @s {text:"Channeling recall for 6 seconds...",color:light_purple}

execute as @s[team=blue] if score %blue ssiege_perk_recall matches ..3 run tellraw @s {text:"(Decrease channel duration by purchasing Recall Speed for your team at the Perk Shop)",color:light_purple}
execute as @s[team=red] if score %red ssiege_perk_recall matches ..3 run tellraw @s {text:"(Decrease channel duration by purchasing Recall Speed for your team at the Perk Shop)",color:light_purple}

execute as @s[team=blue] if score %blue ssiege_perk_recall matches 4.. run scoreboard players set @s ssiege_recall_charge 80
execute as @s[team=blue] if score %blue ssiege_perk_recall matches 4 run tellraw @s {text:"Channeling recall for 4 seconds...",color:light_purple}
execute as @s[team=red] if score %red ssiege_perk_recall matches 4.. run scoreboard players set @s ssiege_recall_charge 80
execute as @s[team=red] if score %red ssiege_perk_recall matches 4 run tellraw @s {text:"Channeling recall for 4 seconds...",color:light_purple}

execute as @s store result score @s uhcp_motion_x2 run data get entity @s Pos[0] 100
execute as @s store result score @s uhcp_motion_y2 run data get entity @s Pos[1] 100
execute as @s store result score @s uhcp_motion_z2 run data get entity @s Pos[2] 100