data modify entity @s PickupDelay set value 100s
summon marker ^ ^ ^5 {Tags:["portablelavapool"]}
execute as @e[tag=portablelavapool] at @s run fill ~2 ~0 ~2 ~-2 ~-2 ~-2 lava
kill @e[tag=portablelavapool]
kill @s