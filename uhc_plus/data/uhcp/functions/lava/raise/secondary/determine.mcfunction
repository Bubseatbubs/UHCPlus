# Check if there are players lower than current layer
scoreboard players set %lava_secondary uhcp_lavaHeight 400
execute as @a[predicate=uhcp:lava/in_lava] run function uhcp:lava/raise/secondary/height
execute if score %lava_secondary uhcp_lavaHeight > %lava_secondary uhcp_lavaCurrentHeight run function uhcp:lava/raise/secondary/restart
