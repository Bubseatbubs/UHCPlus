# Select item automatically if player does not make a selection
# Activates 10 ticks before wave begins
# Places item in the center of the arena
tag @s remove choosingItem
tellraw @s {"text":"You didn't make a selection. Your first option has spawned in the center of the map.","color":"gray"}
execute in minigame_center:medsvl run summon minecraft:item 8 -59 8 {PickupDelay:10,NoGravity:1b,Tags:["pickitem"],Item:{id:"minecraft:stone",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=pickitem,tag=!init,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:3b}]
tag @e[type=item,limit=1,tag=pickitem,sort=nearest] add init
execute as @s at @s run function uhcp:augments/optionselected



