execute store result storage ssiege:sniffer_health input.blue_hp double 1 run data get entity @s Health
function ssiege:bossbar/blue/update_macro with storage ssiege:sniffer_health input

execute if score @s uhcp_game_time > %time uhcp_game_time run return run function ssiege:bossbar/blue/last_stand
execute if score %blue_inhib_up uhcp_game_time matches 0 run return run function ssiege:bossbar/blue/vuln_timer
bossbar set ssiege:blue_sniffer name {text:"Blue Sniffer",color:blue}