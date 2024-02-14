# Effect
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! Your ","color":"gray"},{"text":"equipment","color":"white"},{"text":" became stronger.","color":"gray"}]
tag @s add UHCP_SLUpg
tag @s add UHCP_SLAxe
tag @s add UHCP_SLHoe
tag @s add UHCP_SLPick
tag @s add UHCP_SLShovel

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/13
