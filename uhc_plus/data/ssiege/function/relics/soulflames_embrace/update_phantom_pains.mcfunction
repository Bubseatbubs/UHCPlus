scoreboard players add @s uhcp_count 1
particle minecraft:soul ~ ~2 ~ 1 1 1 0.01 1 normal
execute if score @s uhcp_count matches 80 run playsound minecraft:event.mob_effect.bad_omen master @a[distance=..8] ~ ~ ~ 1 1 0.8
execute unless score @s uhcp_count matches 100.. run return 0
damage @s 4 uhcp:instant_damage by @s
damage @s[type=!minecraft:player] 8 uhcp:instant_damage by @s
playsound minecraft:entity.breeze.hurt master @a[distance=..8] ~ ~ ~ 1 0.5 0.8
scoreboard players reset @s uhcp_count
particle minecraft:soul ~ ~2 ~ 0.25 2 0.25 0.01 150 normal
tag @s remove UHCP_InflictedWithPhantomPain
