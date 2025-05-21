#>  uhcp:augments/select
#   Reset player's inventory and give them a score based on their remaining item
#
# @within  uhcp:augments/validate

tag @s remove UHCP_ChoosingItem
tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoreAugment] if score @s uhcp_id = @a[tag=UHCP_Owner,limit=1] uhcp_id run kill @s
kill @e[type=minecraft:item,predicate=uhcp:dimensions/uhcp/main]
tag @s remove UHCP_Owner
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]

execute in uhcp:main store result score @s uhcp_augment run function uhcp:augments/assign
clear @s
advancement revoke @s only uhcp:augments/chosen_item
