# Effect
give @s minecraft:golden_apple 2
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! Your ","color":"gray"},{"text":"equipment","color":"white"},{"text":" became stronger.","color":"gray"}]
tag @s add UHCP_SLUpg
tag @s add UHCP_SLSword

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/10
