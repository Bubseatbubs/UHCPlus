# 1-4 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..2.5] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run damage @s 6 minecraft:falling_block

particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 2.5 2.5 2.5 0.1 600 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.95 0.8

kill @n[tag=UHCP_GBDisplay]
kill @s