scoreboard players set %increase ssiege_giants 0
execute as @a[tag=!UHCP_Spectator] run execute store result score @s ssiege_giants run random value 0..1
execute as @a[tag=!UHCP_Spectator] if score @s ssiege_giants matches 1 run scoreboard players add %increase ssiege_giants 1
scoreboard players operation %count ssiege_giants += %increase ssiege_giants
tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Bubson spawned "},{"text":"extra Giants","bold":true,"color":"red"},{"text":"!"}]