# Return player to original location
execute if score @s uhcp_lavaMaxHeight matches ..0 at @s run tp @s ~ ~-999 ~
scoreboard players remove @s uhcp_lavaMaxHeight 1
