scoreboard players add @s uhcp_timer 1
execute if score @s uhcp_timer matches 1 as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.blaze.shoot master @a[gamemode=survival,distance=..16] ~ ~ ~ 1 2 0.75
execute positioned ~ ~20 ~ summon minecraft:small_fireball run function uhcp:titans/infernus/fireball/summon_fireball
execute if score @s uhcp_timer matches 85 as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:event.mob_effect.bad_omen master @s ~ ~ ~ 1 1 1
execute unless score @s uhcp_timer matches 100.. run return 0

tag @s add UHCP_CurrentInfernus
execute as @e[tag=UHCP_InfernusFireball] if score @s uhcp_game_id = @n[tag=UHCP_CurrentInfernus] uhcp_game_id at @s run data modify entity @s Motion[1] set value -4.0d
scoreboard players reset @s uhcp_timer
tag @s remove UHCP_CurrentInfernus
