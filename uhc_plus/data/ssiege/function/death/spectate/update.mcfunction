scoreboard players operation %team uhcp_team = @s uhcp_team
execute as @a[gamemode=survival] if score @s uhcp_team = %team uhcp_team run tag @s add SpectatorAlly

# No alive team members
execute unless entity @a[tag=SpectatorAlly] run return run function ssiege:death/spectate/no_allies

# Closest player is not an alive teammate, kick spectator out
execute at @s unless entity @p[tag=SpectatorAlly] run spectate

# Force player to spectate nearest tagged target
execute as @s[tag=!ChangePOV] run tp @s @p[tag=SpectatorAlly]
execute as @s[tag=ChangePOV] run function ssiege:death/spectate/change_pov
spectate @p[tag=SpectatorAlly]

title @s actionbar [{selector:"@p[tag=SpectatorAlly]"}, {text:" "}, {score:{name:"@p[tag=SpectatorAlly]",objective:uhcp_health}, "color":red}, {text:" Health", "color":red}]
tag @a remove SpectatorAlly