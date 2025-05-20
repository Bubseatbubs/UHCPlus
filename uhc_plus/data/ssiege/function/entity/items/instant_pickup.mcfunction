# Force items to be picked up
tag @s add UHCP_BeingPickedUp
tag @s add UHCP_ItemPickup
scoreboard players set %item_drop uhcp_initStatus 0
execute store result score %item_drop uhcp_initStatus on origin run function uhcp:entity/items/instant_pickup/pickup
execute if score %item_drop uhcp_initStatus matches 0 run function uhcp:entity/items/instant_pickup/leave
tag @s remove UHCP_BeingPickedUp
