# Effect
attribute @s minecraft:generic.max_health base set 90
tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You ","color":"gray"},{"text":" became stronger.","color":"gray"}]

# Initialize upgrade
function uhcp:augments/effects/prismatic/sololeveling/upgrade/init
