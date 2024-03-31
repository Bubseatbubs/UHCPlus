execute unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 500..501 run function uhcp:settings/team/team
execute unless score %game uhcp_initStatus matches 1 if score %team uhcp_settings matches 1 if score @s uhcp_settings matches 502..503 run function uhcp:settings/team/selection
execute unless score %game uhcp_initStatus matches 1 if score %team uhcp_settings matches 1 if score @s uhcp_settings matches 504..511 run function uhcp:settings/team/team_size
execute if score @s uhcp_settings matches 512..513 if score %team uhcp_settings matches 1 run function uhcp:settings/team/friendly_fire
execute unless score %game uhcp_initStatus matches 1 if score %team uhcp_settings matches 1 if score @s uhcp_settings matches 514 run function uhcp:settings/team/randomize
