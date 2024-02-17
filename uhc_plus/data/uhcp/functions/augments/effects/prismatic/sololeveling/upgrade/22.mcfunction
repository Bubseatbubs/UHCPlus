# Effect
#give @s golden_apple 2
#tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You gained ","color":"gray"},{"text":"health","color":"white"},{"text":".","color":"gray"}]

# Initialize upgrade
#function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/22
