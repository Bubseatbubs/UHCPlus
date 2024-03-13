function uhcp:settings/pages/team/1
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run execute if score @s uhcp_settings matches 500..501 run function uhcp:settings/team/team
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run execute if score @s uhcp_settings matches 502..503 run function uhcp:settings/team/players_select_teams
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run execute if score @s uhcp_settings matches 504..511 run function uhcp:settings/team/team_size
execute if score @s uhcp_settings matches 512..513 run function uhcp:settings/team/friendly_fire
