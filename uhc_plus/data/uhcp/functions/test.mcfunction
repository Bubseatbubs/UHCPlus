#clear @s minecraft:compass 1
#execute store result score @s uhcp_initStatus run clear @s minecraft:compass 0
#clear @s minecraft:compass
#loot give @s loot uhcp:player_compass
#execute if data entity @s Inventory[{Slot:0b,id:"minecraft:compass"}] store result score %invCount uhcp_initStatus run data get entity @s Inventory[0].Count 
#execute at @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}},distance=..5,sort=nearest,limit=1] store result score %entityCount uhcp_initStatus run data get entity @s Item.Count
#execute at @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}},distance=..5,sort=nearest,limit=1] store result score %entityTime uhcp_initStatus run data get entity @s Age
#execute at @s run kill @e[type=minecraft:item,distance=..5]
advancement revoke @s only uhcp:player_compass




# Need to account for:
#
# If step 1 fails to find any inventory compasses, move to step 2.
#
# 1. Inventory:
# -Total compasses in NBT (copy to storage and do data work).
# -Total player compasses in NBT (copy to storage and do data work).
# -Total number compasses in inventory (execute store result <fake player or @s> <score> run clear @s compass 0).
# -Clear entire inventory if any non-player compasses.
# -Restore (full inventory - 1) non-player compasses if scores match (probably (total <= NBT total) to be safe). Pull from lowest quantity slot.
# -Restore full inventory if one less NBT total (should not be possible to have greater difference than one, so use if (total > NBT total)).
#
# 2. Entities (on delay):
# -For nearest entity non-player compasses thrown by player, calculate total number in Count.
# -Lower count by one (out of possible 64) (good candidate for macro, but scoreboard tree likely better)
#
