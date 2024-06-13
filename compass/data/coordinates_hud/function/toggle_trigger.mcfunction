# Toggles the trigger on and off

scoreboard players operation @s ch_toggleCons *= #ch_toggleCons ch_toggleCons
execute as @s[scores={ch_toggleCons=1}] at @s run tellraw @s ["",{"text":"Coords HUD has been toggled on","color":"yellow"}]
execute as @s[scores={ch_toggleCons=-1}] at @s run tellraw @s ["",{"text":"Coords HUD has been toggled off","color":"yellow"}]

scoreboard players set @s ch_toggle 0