# Effect
attribute @s minecraft:generic.max_health base set 90
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You gained ","color":"gray"},{"text":"health","color":"white"},{"text":".","color":"gray"}]

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init
