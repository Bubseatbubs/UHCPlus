scoreboard players reset @s uhcp_death
execute if score @s uhcp_a_selectedAugment matches 210 run summon creeper ~ ~ ~ {Fuse:0}
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 237
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 223 at @s run function uhcp:augments/effects/prismatic/soulsiphoner
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 112 at @s run function uhcp:augments/effects/silver/healingorbs
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 10 at @s run function uhcp:augments/effects/gold/healingorbs