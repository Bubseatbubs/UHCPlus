execute store result storage ssiege:sniffer_health input.blue_hp double 1 run data get entity @n[tag=bluesniffer] Health
execute store result storage ssiege:sniffer_health input.red_hp double 1 run data get entity @n[tag=redsniffer] Health
function ssiege:bossbar/update_macro with storage ssiege:sniffer_health input