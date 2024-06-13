# 5-8 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..3] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 8 minecraft:falling_block

particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 3 3 3 0.1 700 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.9 0.8

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s