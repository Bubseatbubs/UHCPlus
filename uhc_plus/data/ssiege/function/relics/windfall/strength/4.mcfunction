# 13-16 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..4] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run damage @s 12 minecraft:falling_block
execute at @s as @e[predicate=uhcp:targetable,distance=..6] unless score @s uhcp_team = @n[tag=UHCP_GoldBlock] uhcp_team run effect give @s minecraft:slowness 2 0 false


particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 4 4 4 0.1 800 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.7 0.8

kill @n[tag=UHCP_GBDisplay]
kill @s