data modify entity @s PickupDelay set value 100s
execute on origin run loot give @s loot uhcp:relics
execute on origin at @s run playsound entity.breeze.death master @s ~ ~ ~ 1 0.5 1
execute on origin at @s run playsound block.bell.resonate master @s ~ ~ ~ 1 2 1
execute on origin at @s run particle end_rod ~ ~1 ~ 0.25 0.25 0.25 0.1 25 normal
execute on origin at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 80 normal
kill @s