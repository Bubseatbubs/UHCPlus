scoreboard players add @s uhcp_count 1
particle soul ~ ~2 ~ 1 1 1 0.01 1 normal
execute unless score @s uhcp_count matches 100.. run return 0
damage @s 4 minecraft:fireball
playsound minecraft:entity.breeze.hurt master @a[distance=..7] ~ ~ ~ 1 0.5 0.8
scoreboard players reset @s uhcp_count
particle soul ~ ~2 ~ 0.25 2 0.25 0.01 150 normal
tag @s remove UHCP_InflictedWithPhantomPain