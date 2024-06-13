# Determine setting
execute if score @s uhcp_settings matches 504..507 run function uhcp:settings/team/team_size/lower
execute if score @s uhcp_settings matches 508..511 run function uhcp:settings/team/team_size/raise

# Check whether this setting is within the correct range
execute if score %team_size uhcp_settings matches ..0 run scoreboard players set %team_size uhcp_settings 1
execute if score %team_size uhcp_settings matches 200.. run scoreboard players set %team_size uhcp_settings 199

function uhcp:settings/pages/team
execute unless score %team_size uhcp_settings matches 1 run return run tellraw @s [{"text":"When randomizing teams, "},{"score":{"name":"%team_size","objective":"uhcp_settings"},"color":"gold"},{"text":" players will be on each team when\npossible."}]
tellraw @s [{"text":"When randomizing teams, "},{"text":"1","color":"gold"},{"text":" player will be on each team when\npossible."}]
