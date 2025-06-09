# Item use delay
advancement revoke @s only uhcp:hunting_call
scoreboard players set @s uhcp_itemCount 6
tag @s add UHCP_HCallCurrent

# Find hand with horn
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_huntingcall:true}] run return run function uhcp:augments/effects/gold/huntingcall/mainhand
data modify storage uhcp:hunting_call Horn set from entity @s equipment.offhand

# Check IDs
execute unless data storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id run return run function uhcp:augments/effects/gold/huntingcall/offhand/new
execute store result score @s uhcp_initStatus run data get storage uhcp:hunting_call Horn.components."minecraft:custom_data".game_id
execute unless score @s uhcp_initStatus = %global uhcp_game_id run return run function uhcp:augments/effects/gold/huntingcall/offhand/new

# Validate use
function uhcp:augments/effects/gold/huntingcall/offhand/validate
