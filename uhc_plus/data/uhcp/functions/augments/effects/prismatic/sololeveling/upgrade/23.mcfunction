# Effect
effect give @s minecraft:resistance infinite 0 false
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You gained ","color":"gray"},{"text":"resistance","color":"white"},{"text":".","color":"gray"}]

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/23
