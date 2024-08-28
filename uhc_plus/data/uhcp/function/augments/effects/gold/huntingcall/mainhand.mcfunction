# Store horn data
data modify storage uhcp:hunting_call Horn set from entity @s SelectedItem

# Check IDs
execute unless data storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id run return run function uhcp:augments/effects/gold/huntingcall/mainhand/new
execute store result score @s uhcp_initStatus run data get storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id
execute unless score @s uhcp_initStatus = %global uhcp_game_id run return run function uhcp:augments/effects/gold/huntingcall/mainhand/new

# Validate use
function uhcp:augments/effects/gold/huntingcall/mainhand/validate
