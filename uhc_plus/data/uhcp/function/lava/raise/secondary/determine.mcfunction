# Check if there are players lower than current layer
scoreboard players set %lava_secondary uhcp_lava_height 400
execute as @a[predicate=uhcp:lava/in_region] run function uhcp:lava/raise/secondary/height
execute if score %lava_secondary uhcp_lava_height > %lava_secondary uhcp_lava_currentHeight run function uhcp:lava/raise/secondary/restart
