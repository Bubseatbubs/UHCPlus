scoreboard players add @s uhcp_timer 1

tag @s add UHCP_Damage

playsound minecraft:block.beacon.ambient ambient @a[distance=..6] ~ ~ ~ 0.3 1 0.1
function uhcp:relics/soulflames_embrace/particles
execute as @e[predicate=uhcp:targetable,distance=..4] unless score @s uhcp_team = @n[tag=UHCP_Damage] uhcp_team at @s run function uhcp:relics/soulflames_embrace/damage
execute as @s[tag=UHCP_PhantomPains] as @e[tag=!UHCP_InflictedWithPhantomPain,predicate=uhcp:targetable,distance=..4] unless score @s uhcp_team = @n[tag=UHCP_Damage] uhcp_team at @s run tag @s add UHCP_InflictedWithPhantomPain
tag @s remove UHCP_Damage

execute if score @s uhcp_timer matches 100.. run playsound minecraft:block.fire.extinguish master @a[distance=..9] ~ ~ ~ 1 1 0.5
kill @s[scores={uhcp_timer=100..}]
