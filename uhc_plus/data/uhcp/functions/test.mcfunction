# This function runs once for every crafted item.

#clear @s minecraft:compass 1
#execute store result score %invTotalCount uhcp_initStatus run clear @s minecraft:compass 0
#clear @s minecraft:compass
#loot give @s loot uhcp:player_compass
#execute if data entity @s Inventory[{Slot:0b,id:"minecraft:compass"}] store result score %invCount uhcp_initStatus run data get entity @s Inventory[0].Count 
#execute at @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}},distance=..5,sort=nearest,limit=1] store result score %entityCount uhcp_initStatus run data get entity @s Item.Count
#execute at @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}},distance=..5,sort=nearest,limit=1] store result score %entityTime uhcp_initStatus run data get entity @s Age
#execute at @s run kill @e[type=minecraft:item,distance=..5]
say @s
advancement revoke @s only uhcp:player_compass
#schedule function uhcp:test1 1t



# Need to account for:
#
# If step 1 fails to find any inventory non-player compasses, move to step 2.
#
# 1. Inventory:
# -Total compasses in NBT (copy to storage and do data work).
# -Total player compasses in NBT (copy to storage and do data work).
# -Total number compasses in inventory (execute store result <fake player or @s> <score> run clear @s compass 0).
# -Clear entire inventory if any non-player compasses found.
# -Restore (full inventory - 1) non-player compasses if scores match (probably use (total <= NBT total) to be safe). Pull from lowest quantity slot.
# -Restore full inventory if NBT compass count less than total compass count (should not be possible to have greater difference than one, so use if (total > NBT total)).
#
# 2. Entities:
# Option 1:
# -Give player(s) who did not meet above conditions tag.
# -One tick later (probably should not use schedule function):
# -For nearest entity non-player compasses thrown by player(s), calculate total number in Count. (Possible to not be most recently thrown item.)
# -Lower count by one (out of possible 64) (transfer data to score, remove one from score, transfer score back to entity).
#
# Option 2 (does not completely work)):
# -Assign inside item NBT data UUID tag (to all non-player compass item entities), give tag to all item entities (including player compasses and other items). (Mark as marked.)
# -Add 1 to player dummy scoreboard for number of thrown crafted compasses. (Not minecraft.dropped scoreboard, can only throw one compass at a time when crafting.)
# -Add two advancements:
# -One for "minecraft:thrown_item_picked_up_by_player".
# -One for "minecraft:thrown_item_picked_up_by_entity". (Make not player (invert).)
# -Set conditions for thrown item for both advancements to player with score.
# -Check if inventory/hand items contains at least one non-player compass. If so, reduce item by one (clear minecraft:compass{<special tag>} 1). (Would require macro or data array.)
# -Could do inventory changed advancement, may not be worth it.
