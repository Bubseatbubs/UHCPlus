# Assign team scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Respect teams
execute if score TotalWorldSize setting matches 1000 run spreadplayers 0 0 100 400 true @a
execute if score TotalWorldSize setting matches 1500 run spreadplayers 0 0 100 700 true @a
execute if score TotalWorldSize setting matches 2000 run spreadplayers 0 0 100 900 true @a
execute if score TotalWorldSize setting matches 2500 run spreadplayers 0 0 100 1200 true @a
execute if score TotalWorldSize setting matches 3000 run spreadplayers 0 0 100 1400 true @a
execute if score TotalWorldSize setting matches 4000 run spreadplayers 0 0 100 1900 true @a
execute if score TotalWorldSize setting matches 5000 run spreadplayers 0 0 100 2400 true @a
execute if score TotalWorldSize setting matches 7000 run spreadplayers 0 0 100 3400 true @a
execute if score TotalWorldSize setting matches 10000 run spreadplayers 0 0 100 4900 true @a

# Spread same teams slightly
function uhcp:start/spreadplayers/teams/cycle
