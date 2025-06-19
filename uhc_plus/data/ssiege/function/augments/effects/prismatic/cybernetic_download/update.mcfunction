# Don't do anything if player has selected an upgrade for this tier
execute unless entity @s[tag=CD_SelectingUpgrade] if score @s upgrade matches 1..6 run tellraw @s ["",{"text":"[Cybernetic Download]","bold":true,"color":"aqua"},{"text":" You've already selected an Upgrade for this tier.","color":"dark_red"},{"text":" (new upgrades come every 7 minutes)","color":"gray"}]
execute unless entity @s[tag=CD_SelectingUpgrade] if score @s upgrade matches 1..6 run return run scoreboard players set @s upgrade 0
execute unless entity @s[tag=CD_SelectingUpgrade] run return fail

# Display Menu
function ssiege:augments/effects/prismatic/cybernetic_download/menu/init

# Check if player has selected any upgrades (upgrade score 1-6) and apply them
execute unless score @s upgrade matches 0 run function ssiege:augments/effects/prismatic/cybernetic_download/apply/init