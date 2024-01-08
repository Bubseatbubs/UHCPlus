# Toggles the trigger on and off

scoreboard players operation @s ch_toggleConst *= #ch_toggleConst ch_toggleConst
execute as @s[scores={ch_toggleConst=1}] at @s run tellraw @s ["",{"text":"Coords HUD has been toggled on","color":"yellow"}]
execute as @s[scores={ch_toggleConst=-1}] at @s run tellraw @s ["",{"text":"Coords HUD has been toggled off","color":"yellow"}]

scoreboard players set @s ch_toggle 0