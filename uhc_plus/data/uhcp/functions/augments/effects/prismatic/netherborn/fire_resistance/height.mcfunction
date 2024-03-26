# Compare player height against lava height
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute if score %lava uhcp_lavaCurrentHeight < @s uhcp_initStatus run function uhcp:augments/effects/prismatic/netherborn/fire_resistance/apply

# Revoke advancement
advancement revoke @s only uhcp:augments/netherborn/in_lava
