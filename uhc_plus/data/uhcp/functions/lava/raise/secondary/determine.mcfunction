# Check if players lower than current layer
scoreboard players set %uhcp_lavaSec uhcp_lavaHeight 400
execute as @a[predicate=uhcp:dimensions/minecraft/overworld,gamemode=survival] store result score @s uhcp_lavaCurrentHeight run data get entity @s Pos[1]
execute as @a[predicate=uhcp:dimensions/minecraft/overworld,gamemode=survival] if score @s uhcp_lavaCurrentHeight < %uhcp_lavaSec uhcp_lavaHeight run scoreboard players operation %uhcp_lavaSec uhcp_lavaHeight = @s uhcp_lavaCurrentHeight
execute if score %uhcp_lavaSec uhcp_lavaHeight > %uhcp_lavaSec uhcp_lavaCurrentHeight run function uhcp:lava/raise/secondary/restart
