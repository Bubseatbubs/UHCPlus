# Check cooldown
execute store result score @s uhcp_initStatus run data get storage uhcp:hunting_call Horn.components."minecraft:custom_data".id
execute store result score @s uhcp_initStatus run function uhcp:augments/effects/gold/huntingcall/search
execute if score @s uhcp_initStatus matches 1.. run return run function uhcp:augments/effects/gold/huntingcall/calculate
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:augments/effects/gold/huntingcall/effect
function uhcp:augments/effects/gold/huntingcall/mainhand/new
