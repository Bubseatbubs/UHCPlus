# Item use delay
advancement revoke @s only uhcp:hunting_call
scoreboard players set @s uhcp_itemCount 6

# Find hand with horn
execute if items entity @s weapon.mainhand minecraft:goat_horn run return run function uhcp:augments/effects/gold/huntingcall/mainhand

# Check ID
execute store result score @s uhcp_initStatus run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".id
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/gold/huntingcall/offhand/new

# Validate use
function uhcp:augments/effects/gold/huntingcall/offhand/validate
