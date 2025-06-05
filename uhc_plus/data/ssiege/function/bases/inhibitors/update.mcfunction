# Check which inhibitors are alive
execute store result score %blue_alive uhcp_initStatus run execute if entity @e[tag=SSIEGE_blue_inhib]
execute store result score %red_alive uhcp_initStatus run execute if entity @e[tag=SSIEGE_red_inhib]

# If an inhibitor isn't alive but is still marked as up, run the appropriate death function
execute if score %blue_alive uhcp_initStatus matches 0 if score %blue_inhib_up uhcp_game_time matches 1 run function ssiege:bases/inhibitors/blue_death
execute if score %red_alive uhcp_initStatus matches 0 if score %red_inhib_up uhcp_game_time matches 1 run function ssiege:bases/inhibitors/red_death

# Update Sniffers Vulnerability
execute if score %blue_inhib_up uhcp_game_time matches 1 run data merge entity @n[tag=bluesniffer] {Invulnerable:1b}
execute if score %red_inhib_up uhcp_game_time matches 1 run data merge entity @n[tag=redsniffer] {Invulnerable:1b}

execute if score %blue_inhib_up uhcp_game_time matches 0 run data merge entity @n[tag=bluesniffer] {Invulnerable:0b}
execute if score %red_inhib_up uhcp_game_time matches 0 run data merge entity @n[tag=redsniffer] {Invulnerable:0b}

# Decrease respawn timers
execute if score %blue_inhib_respawn uhcp_game_time matches 1.. run scoreboard players remove %blue_inhib_respawn uhcp_game_time 1
execute if score %red_inhib_respawn uhcp_game_time matches 1.. run scoreboard players remove %red_inhib_respawn uhcp_game_time 1

# If a respawn timer hits 0 and an inhibitor is down, run appropriate respawn function
execute if score %blue_inhib_up uhcp_game_time matches 0 if score %blue_inhib_respawn uhcp_game_time matches 0 run function ssiege:bases/inhibitors/blue_respawn
execute if score %red_inhib_up uhcp_game_time matches 0 if score %red_inhib_respawn uhcp_game_time matches 0 run function ssiege:bases/inhibitors/red_respawn