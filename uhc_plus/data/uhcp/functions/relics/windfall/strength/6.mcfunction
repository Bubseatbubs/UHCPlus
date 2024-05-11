# 20 Gapples
execute at @s as @e[predicate=uhcp:targetable,distance=..6] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run damage @s 24 minecraft:falling_block
execute at @s as @e[predicate=uhcp:targetable,distance=..6] unless score @s uhcp_team = @e[tag=UHCP_GoldBlock,sort=nearest,limit=1] uhcp_team run effect give @s minecraft:slowness 2 100 false

particle minecraft:block{block_state:"minecraft:gold_block"} ~ ~ ~ 6 6 6 0.1 1000 normal
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 1 75 normal
playsound minecraft:block.anvil.land master @a[distance=..20] ~ ~ ~ 1 0.5 0.8
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..20] ~ ~ ~ 1 1 0.8
execute at @s run fill ~-6 ~-3 ~-6 ~6 ~ ~6 minecraft:farmland replace minecraft:grass_block

kill @e[tag=UHCP_GBDisplay,sort=nearest,limit=1]
kill @s