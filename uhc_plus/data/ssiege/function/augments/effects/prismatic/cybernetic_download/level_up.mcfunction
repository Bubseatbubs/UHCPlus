execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1

# Roll Upgrade Options
function ssiege:augments/effects/prismatic/cybernetic_download/roll/init

# Player can select upgrade again
scoreboard players set @s upgrade 0
tag @s add CD_SelectingUpgrade

# Schedule next level up
scoreboard players add @s uhcp_game_time 8400

# Stop running menu updates once player reaches max upgrades
execute if score @s uhcp_const matches 7 run return run scoreboard players set @s uhcp_game_time -1