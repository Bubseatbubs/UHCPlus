# 20 Gapples
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..6] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 18 falling_anvil
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..6] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run effect give @s slowness 2 100 false

particle minecraft:block gold_block ~ ~ ~ 6 6 6 0.1 1000 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..20] ~ ~ ~ 1 0.5 0.8
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..20] ~ ~ ~ 1 1 0.8

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s