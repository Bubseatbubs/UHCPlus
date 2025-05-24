scoreboard players display name %encounter_name uhcp_game_display {"text":"Encounter:","color":"gold"}

execute if score %current_encounter ssiege_current_encounter matches 1 run scoreboard players display numberformat %encounter_name currentEncounter fixed "Bubson"
execute if score %current_encounter ssiege_current_encounter matches 2 run scoreboard players display numberformat %encounter_name currentEncounter fixed "Rainsplosion"
