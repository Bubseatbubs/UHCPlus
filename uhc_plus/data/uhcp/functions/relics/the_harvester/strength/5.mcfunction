# 17-19 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..4.5] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 14 falling_block
execute at @s as @e[predicate=uhcp:targetable,distance=..4.5] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run effect give @s slowness 2 1 false


particle minecraft:block gold_block ~ ~ ~ 4.5 4.5 4.5 0.1 900 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.6 0.8

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s