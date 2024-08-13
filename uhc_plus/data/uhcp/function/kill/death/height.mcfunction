# Check player height
execute unless score @s uhcp_initStatus matches ..-64 at @s run return run spawnpoint @s ~ ~ ~ ~
execute at @s run spawnpoint @s ~ -64 ~ ~
