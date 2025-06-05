execute store result storage ssiege:sniffer_health input.blue_hp double 1 run data get entity @n[tag=bluesniffer] Health
execute store result storage ssiege:sniffer_health input.red_hp double 1 run data get entity @n[tag=redsniffer] Health

execute if score %blue_inhib_up uhcp_game_time matches 0 run scoreboard players operation %blue_inhib_sec uhcp_game_time = %blue_inhib_respawn uhcp_game_time
execute if score %blue_inhib_up uhcp_game_time matches 0 run scoreboard players operation %blue_inhib_sec uhcp_game_time /= %INHIB_SECONDS uhcp_game_time

execute if score %red_inhib_up uhcp_game_time matches 0 run scoreboard players operation %red_inhib_sec uhcp_game_time = %red_inhib_respawn uhcp_game_time
execute if score %red_inhib_up uhcp_game_time matches 0 run scoreboard players operation %red_inhib_sec uhcp_game_time /= %INHIB_SECONDS uhcp_game_time

function ssiege:bossbar/update_macro with storage ssiege:sniffer_health input