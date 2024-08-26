# Check ID
execute store result score @s uhcp_initStatus run data get entity @s SelectedItem.components."minecraft:custom_data".id
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/gold/huntingcall/mainhand/new

# Validate use
function uhcp:augments/effects/gold/huntingcall/mainhand/validate
