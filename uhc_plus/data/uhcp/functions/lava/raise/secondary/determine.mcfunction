# Check if there are players lower than current layer
scoreboard players set %uhcp_lavaSec uhcp_lavaHeight 400
execute as @a[predicate=uhcp:lava/in_lava] run function uhcp:lava/raise/secondary/height
execute if score %uhcp_lavaSec uhcp_lavaHeight > %uhcp_lavaSec uhcp_lavaCurrentHeight run function uhcp:lava/raise/secondary/restart
