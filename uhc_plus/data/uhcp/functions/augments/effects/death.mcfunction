scoreboard players reset @s uhcp_death
execute if score @s uhcp_a_selectedAugment matches 208 run attribute @s minecraft:generic.armor modifier remove 05e629b8-3a86-4491-bd8e-9c6584dd335c
execute if score @s uhcp_a_selectedAugment matches 237 run scoreboard players set @s uhcp_a_gloryOfRa -10
execute if score @s[tag=UHCP_Explode] uhcp_a_selectedAugment matches 210 run summon minecraft:creeper ~ ~ ~ {Fuse:0,powered:1}
execute if score @s uhcp_a_selectedAugment matches 147 run setblock ~ ~ ~ warped_fungus
execute as @a[distance=..10,scores={uhcp_a_gloryOfRa=0..}] if score @s uhcp_a_selectedAugment matches 237 at @s run scoreboard players add @s uhcp_a_gloryOfRa 1
execute as @a[distance=..10,scores={uhcp_a_gloryOfRa=0..}] if score @s uhcp_a_selectedAugment matches 237 at @s run loot give @s loot uhcp:augments/sundisk
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 112 at @s run function uhcp:augments/effects/silver/healingorbsi
execute as @a[distance=..10] if score @s uhcp_a_selectedAugment matches 10 at @s run function uhcp:augments/effects/gold/healingorbsii
tag @s remove UHCP_Explode
