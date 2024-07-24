# Determine setting
execute if score @s uhcp_settings matches 512..513 run return run execute if score %team uhcp_settings matches 1 run function uhcp:settings/team/friendly_fire
execute if score %game uhcp_initStatus matches 1 run return fail

execute if score @s uhcp_settings matches 500..501 run return run function uhcp:settings/team/team
execute unless score %team uhcp_settings matches 1 run return fail

execute if score @s uhcp_settings matches 502..503 run return run function uhcp:settings/team/selection
execute if score @s uhcp_settings matches 504..511 run return run function uhcp:settings/team/team_size
execute if score @s uhcp_settings matches 514 run function uhcp:settings/team/randomize
