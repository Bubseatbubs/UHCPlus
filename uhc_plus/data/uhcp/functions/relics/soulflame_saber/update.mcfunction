scoreboard players add @s uhcp_a_timer 1

tag @s add UHCP_Damage

playsound minecraft:block.beacon.ambient ambient @a[distance=..6] ~ ~ ~ 0.3 1 0.1
function uhcp:relics/soulflame_saber/particles
execute as @e[type=!#uhcp:inanimate_mobs,distance=..4] unless score @s uhcp_team = @e[tag=UHCP_Damage,sort=nearest,limit=1] uhcp_team run damage @s 2 magic
execute at @e[type=!#uhcp:inanimate_mobs,distance=..4] unless score @s uhcp_team = @e[tag=UHCP_Damage,sort=nearest,limit=1] uhcp_team run particle soul_fire_flame ~ ~2 ~ 0.25 0.5 0.25 0.1 3 normal

tag @s remove UHCP_Damage

execute if score @s uhcp_a_timer matches 100.. run playsound block.fire.extinguish master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute if score @s uhcp_a_timer matches 100.. run kill @s
