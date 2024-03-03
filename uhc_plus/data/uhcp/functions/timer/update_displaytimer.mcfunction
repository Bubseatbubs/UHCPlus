# Update Display Timer
scoreboard players add %updateDisplay uhcp_gameTime 1
execute unless score %updateDisplay uhcp_gameTime matches 10.. run return 0

# Update Player Count
function uhcp:timer/update_playersleft
function uhcp:timer/update_bordersize

scoreboard players reset %updateDisplay uhcp_gameTime
scoreboard players set %display uhcp_gameTime 1200
scoreboard players operation %displayM uhcp_gameTime = %time uhcp_gameTime
scoreboard players operation %displayM uhcp_gameTime /= %display uhcp_gameTime
scoreboard players set %display uhcp_gameTime 20
scoreboard players operation %displayS uhcp_gameTime = %time uhcp_gameTime
scoreboard players operation %displayS uhcp_gameTime /= %display uhcp_gameTime
scoreboard players set %display uhcp_gameTime 60
scoreboard players operation %display uhcp_gameTime *= %displayM uhcp_gameTime
scoreboard players operation %displayS uhcp_gameTime -= %display uhcp_gameTime

execute store result storage uhcp:displaytime input.seconds int 1 run scoreboard players get %displayS uhcp_gameTime
execute store result storage uhcp:displaytime input.minutes int 1 run scoreboard players get %displayM uhcp_gameTime

execute if score %displayS uhcp_gameTime matches 0..9 run function uhcp:timer/macro_displaytimerzero with storage uhcp:displaytime input
execute if score %displayS uhcp_gameTime matches 10..59 run function uhcp:timer/macro_displaytimer with storage uhcp:displaytime input

