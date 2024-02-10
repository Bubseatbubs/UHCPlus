# Manage inventory
execute if entity @s[gamemode=survival] run function uhcp:augments/effects/prismatic/sololeveling/inventory/inventory

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level
