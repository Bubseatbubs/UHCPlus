# Run for players whom are part of game
execute as @s[gamemode=!spectator] run function uhcp:left/in_game/alive

# Add to team
execute if score %pvp uhcp_settings matches ..0 as @s[team=grace_period] run function uhcp:left/in_game/team

tag @s remove UHCP_Died
