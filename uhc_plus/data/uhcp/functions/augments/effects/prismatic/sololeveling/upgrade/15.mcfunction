# Effect
attribute @s minecraft:generic.max_health base set 58
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:regeneration 3 1 true
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! Your ","color":"gray"},{"text":"equipment","color":"white"},{"text":" became stronger.","color":"gray"}]
tag @s add UHCP_SLUpg
tag @s add UHCP_SLAxe
tag @s add UHCP_SLBow
tag @s add UHCP_SLSword

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/15
