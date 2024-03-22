# Check player teams every second
execute unless score %end uhcp_gameTime matches 1.. run function uhcp:end/check

scoreboard players remove %end uhcp_gameTime 1
