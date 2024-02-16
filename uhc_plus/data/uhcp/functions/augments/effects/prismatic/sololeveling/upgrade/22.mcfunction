# Effect
attribute @s minecraft:generic.max_health base set 64
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:regeneration 3 1 true
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You gained ","color":"gray"},{"text":"health","color":"white"},{"text":".","color":"gray"}]

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/22
