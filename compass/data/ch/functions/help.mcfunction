tellraw @s ["",{"text":"Coordinates HUD help:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Toggle HUD","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ch_toggle"},"hoverEvent":{"action":"show_text","value":"Click to toggle HUD (/trigger ch_toggle)"}}]

scoreboard players set @s ch_help 0
scoreboard players enable @s ch_help