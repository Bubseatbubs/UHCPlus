# 13-16 Gapples
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..4] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 12 falling_anvil
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..6] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run effect give @s slowness 2 0 false


particle minecraft:block gold_block ~ ~ ~ 4 4 4 0.1 800 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..12.5] ~ ~ ~ 1 0.7 0.8

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s