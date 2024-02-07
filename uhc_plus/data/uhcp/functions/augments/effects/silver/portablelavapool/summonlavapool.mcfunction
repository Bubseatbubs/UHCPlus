data modify entity @s PickupDelay set value 100s
execute rotated ~ 0 run summon marker ^ ^ ^5 {Tags:["portablelavapool"]}
execute as @e[tag=portablelavapool] at @s run fill ~2 ~-1 ~2 ~-2 ~-2 ~-2 lava
kill @e[tag=portablelavapool]
kill @e[sort=nearest,limit=1,predicate=uhcp:augments/lavapool]