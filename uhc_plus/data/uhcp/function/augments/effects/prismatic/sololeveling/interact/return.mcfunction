# Return player to original location
execute at @s[scores={uhcp_lava_maxHeight=..0}] run tp @s ~ ~-999 ~
scoreboard players remove @s uhcp_lava_maxHeight 1
