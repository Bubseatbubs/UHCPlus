
# Determine setting
execute if score @s uhcp_settings matches 504 run function uhcp:settings/team/team_size/lower/1
execute if score @s uhcp_settings matches 505 run function uhcp:settings/team/team_size/lower/3
execute if score @s uhcp_settings matches 506 run function uhcp:settings/team/team_size/lower/5
execute if score @s uhcp_settings matches 507 run function uhcp:settings/team/team_size/lower/10
execute if score @s uhcp_settings matches 508 run function uhcp:settings/team/team_size/raise/1
execute if score @s uhcp_settings matches 509 run function uhcp:settings/team/team_size/raise/3
execute if score @s uhcp_settings matches 510 run function uhcp:settings/team/team_size/raise/5
execute if score @s uhcp_settings matches 511 run function uhcp:settings/team/team_size/raise/10

# Check whether this setting is within the correct range
execute if score %team_size uhcp_settings matches ..0 run scoreboard players set %team_size uhcp_settings 1
execute if score %team_size uhcp_settings matches 100.. run scoreboard players set %team_size uhcp_settings 99

function uhcp:settings/pages/team/1
execute if score %team_size uhcp_settings matches 1 run return run tellraw @s [{"text":"When randomizing teams, "},{"score":{"name":"%team_size","objective":"uhcp_settings"},"color":"gold"},{"text":" player will be a part of each team when possible."}]
execute if score %team_size uhcp_settings matches 2.. run return run tellraw @s [{"text":"When randomizing teams, "},{"score":{"name":"%team_size","objective":"uhcp_settings"},"color":"gold"},{"text":" players will be a part of each team when possible."}]
