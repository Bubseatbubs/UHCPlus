# Compare against lava height
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute if score %uhcp_lava uhcp_lavaCurrentHeight >= @s uhcp_initStatus run tag @s remove UHCP_EffectNFR
