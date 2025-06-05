execute store result storage ssiege:sniffer_health input.blue_hp double 1 run data get entity @n[tag=bluesniffer] Health
execute store result storage ssiege:sniffer_health input.red_hp double 1 run data get entity @n[tag=redsniffer] Health
function ssiege:bossbar/update_macro with storage ssiege:sniffer_health input

execute if score %blue_inhib_up uhcp_game_time matches 0 run function ssiege:bossbar/update_blue_vuln_timer
execute if score %red_inhib_up uhcp_game_time matches 0 run function ssiege:bossbar/update_red_vuln_timer

execute if score %blue_inhib_up uhcp_game_time matches 1 run bossbar set ssiege:blue_sniffer name {text:"Blue Sniffer [Protected]",color:blue}
execute if score %red_inhib_up uhcp_game_time matches 1 run bossbar set ssiege:red_sniffer name {text:"Red Sniffer [Protected]",color:red}