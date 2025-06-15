execute as @s[team=red] rotated as @s run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamRed"]}
execute as @s[team=blue] rotated as @s run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamBlue"]}

execute as @s rotated as @s run execute as @e[tag=UHCP_NewGate,limit=1,sort=nearest] at @s rotated as @p run function ssiege:augments/effects/gold/gates/portal/find_coords

execute as @e[tag=UHCP_NewGate] run tag @s remove UHCP_NewGate