scoreboard players add @s uhcp_timer 1

tag @s add UHCP_Damage

playsound minecraft:block.beacon.ambient ambient @a[distance=..3] ~ ~ ~ 0.3 1 0.1
function uhcp:relics/soulflames_embrace/particles
execute as @a[gamemode=survival,distance=..4] at @s run function uhcp:relics/soulflames_embrace/damage
execute if entity @p[gamemode=survival,distance=..4] store result score %random uhcp_titans_count run random value 0..100
execute if score %random uhcp_titans_count matches 1 as @a[tag=!UHCP_InflictedWithPhantomPain,gamemode=survival,distance=..4] run tag @s add UHCP_InflictedWithPhantomPain
tag @s remove UHCP_Damage

execute if score @s uhcp_timer matches 100.. run playsound minecraft:block.fire.extinguish master @a[distance=..9] ~ ~ ~ 1 1 0.5
kill @s[scores={uhcp_timer=100..}]
