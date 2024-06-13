execute at @s as @a[distance=..3,gamemode=survival] run damage @s 8 minecraft:falling_block

particle minecraft:block{block_state:"minecraft:iron_block"} ~ ~ ~ 3 3 3 0.1 100 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 10 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 0.25 0.9 0.25

execute on passengers run kill @s
kill @s