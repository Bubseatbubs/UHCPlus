# Run for players whom are part of game
execute as @s[gamemode=!spectator] run function uhcp:left/in_game/alive

# Reset Titan Healthbars -- they should re-apply if the Titans are still alive
function uhcp:titans/reset_bossbar

# Add to team
execute if score %pvp uhcp_settings matches ..0 as @s[team=grace_period] run function uhcp:teams/join
