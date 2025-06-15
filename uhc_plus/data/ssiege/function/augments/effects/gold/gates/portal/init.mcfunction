execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamRed"]}

execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamBlue"]}

execute as @e[tag=UHCP_NewGate] run function ssiege:augments/effects/gold/gates/portal/find_coords

execute as @e[tag=UHCP_NewGate] run tag @s remove UHCP_NewGate