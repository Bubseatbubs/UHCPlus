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
