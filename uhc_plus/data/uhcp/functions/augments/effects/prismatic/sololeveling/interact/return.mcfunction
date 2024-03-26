# Return player to original location
execute if score @s uhcp_lava_maxHeight matches ..0 at @s run tp @s ~ ~-999 ~
scoreboard players remove @s uhcp_lava_maxHeight 1
