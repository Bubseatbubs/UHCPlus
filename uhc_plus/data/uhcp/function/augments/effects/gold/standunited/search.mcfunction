# Apply strength when member of team is nearby
execute as @a[tag=!UHCP_United,gamemode=survival,distance=..4] if score @s uhcp_team = @p[tag=UHCP_United] uhcp_team run return run effect give @p[tag=UHCP_United] minecraft:strength 1 0 false
