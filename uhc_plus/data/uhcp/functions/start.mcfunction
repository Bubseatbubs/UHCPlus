# Start game
scoreboard players set %uhcp_gameStart uhcp_initStatus 1

# Assign team scoreboards
scoreboard players set @a uhcp_team 0
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:start/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:start/team
