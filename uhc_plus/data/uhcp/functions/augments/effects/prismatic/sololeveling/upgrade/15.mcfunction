# Upgrade items
execute if entity @s[gamemode=survival] run function uhcp:augments/effects/prismatic/sololeveling/upgrade/init/15

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/15
