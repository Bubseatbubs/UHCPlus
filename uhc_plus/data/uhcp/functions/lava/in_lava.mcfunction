# Remove fire resistance of players in lava
execute as @s[gamemode=survival] run function uhcp:lava/in_lava/height
advancement revoke @s only uhcp:in_lava
