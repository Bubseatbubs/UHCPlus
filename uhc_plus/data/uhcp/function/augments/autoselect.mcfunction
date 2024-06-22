#>  uhcp:augments/autoselect
#   Runs if player didn't select an augment in time
#   Selects a random augment from their listed choices
#
# @within  uhcp:left/in_game/augments/select
# @within  uhcp:augments/countdown/1

tag @s remove UHCP_ChoosingItem

# Randomize selection
execute unless score %patrons uhcp_settings matches 1 store result score @s uhcp_initStatus run random value 0..2
execute if score %patrons uhcp_settings matches 1 store result score @s uhcp_initStatus run random value 0..3
item replace entity @s[scores={uhcp_initStatus=0}] player.cursor from entity @s container.3
item replace entity @s[scores={uhcp_initStatus=1}] player.cursor from entity @s container.4
item replace entity @s[scores={uhcp_initStatus=2}] player.cursor from entity @s container.5
item replace entity @s[scores={uhcp_initStatus=3}] player.cursor from entity @s container.7
execute store result score @s uhcp_augment run function uhcp:augments/assign
clear @s

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]
