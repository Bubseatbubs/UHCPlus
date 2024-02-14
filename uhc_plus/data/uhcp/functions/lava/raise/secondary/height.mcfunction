# Store lowest player height as score
execute store result score @s uhcp_lavaCurrentHeight run data get entity @s Pos[1]
execute if score @s uhcp_lavaCurrentHeight < %uhcp_lavaSec uhcp_lavaHeight run scoreboard players operation %uhcp_lavaSec uhcp_lavaHeight = @s uhcp_lavaCurrentHeight
