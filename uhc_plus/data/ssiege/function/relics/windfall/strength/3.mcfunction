# 9-12 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..3.5] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run damage @s 10 minecraft:falling_block

particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 3.5 3.5 3.5 0.1 750 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.8 0.8

kill @n[tag=UHCP_GBDisplay]
kill @s