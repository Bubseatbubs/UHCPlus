# Effect
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! Your ","color":"gray"},{"text":"equipment","color":"white"},{"text":" became stronger.","color":"gray"}]
tag @s add UHCP_SLUpg
tag @s add UHCP_SLBoots
tag @s add UHCP_SLChest
tag @s add UHCP_SLHelm
tag @s add UHCP_SLLegs

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/18
