execute store result storage ssiege:sniffer_health input.red_hp double 1 run data get entity @s Health
function ssiege:bossbar/red/update_macro with storage ssiege:sniffer_health input

execute if score @s uhcp_game_time > %time uhcp_game_time run return run function ssiege:bossbar/red/last_stand
execute if score %red_inhib_up uhcp_game_time matches 0 run return run function ssiege:bossbar/red/vuln_timer
bossbar set ssiege:red_sniffer name {text:"Red Sniffer",color:red}