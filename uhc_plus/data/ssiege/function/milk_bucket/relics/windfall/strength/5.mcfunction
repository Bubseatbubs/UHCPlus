# 17-19 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..4.5] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run damage @s 14 minecraft:falling_block
execute at @s as @e[predicate=uhcp:targetable,distance=..4.5] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run effect give @s minecraft:slowness 2 1 false


particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 4.5 4.5 4.5 0.1 900 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.6 0.8

kill @n[tag=UHCP_GBDisplay]
kill @s