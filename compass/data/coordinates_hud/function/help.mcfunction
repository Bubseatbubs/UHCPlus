tellraw @s ["",{"text":"Coordinates HUD config:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Toggle HUD","color":"yellow","click_event":{"action":"run_command","command":"/trigger ch_toggle"},"hover_event":{"action":"show_text","value":"Click to toggle HUD (/trigger ch_toggle)"}}]

scoreboard players set @s ch_help 0
scoreboard players enable @s ch_help