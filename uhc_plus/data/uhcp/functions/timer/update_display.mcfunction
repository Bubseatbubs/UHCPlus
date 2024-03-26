# Update Display
scoreboard players remove %updateDisplay uhcp_gameTime 1
execute unless score %updateDisplay uhcp_gameTime matches ..0 run return 0
scoreboard players set %updateDisplay uhcp_gameTime 10

# Update Player Count
function uhcp:timer/update_playersleft
function uhcp:timer/update_bordersize

execute unless score %time_freeze uhcp_initStatus matches 1 run function uhcp:timer/update_displaytimer
