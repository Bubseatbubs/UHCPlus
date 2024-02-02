# 0 Gapples
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..2.25] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 4 falling_anvil

particle minecraft:block gold_block ~ ~ ~ 2 2 2 0.1 500 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 1 0.8

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s