execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1

# Roll Upgrade Options
function ssiege:augments/effects/prismatic/cybernetic_download/roll/init

# Player can select upgrade again
scoreboard players set @s upgrade 0
tag @s add CD_SelectingUpgrade

# Schedule next level up
scoreboard players add @s uhcp_game_time 8400