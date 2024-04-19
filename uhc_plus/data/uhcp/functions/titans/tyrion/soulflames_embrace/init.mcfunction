tag @s add UHCP_Owner
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon
execute at @s run function uhcp:titans/tyrion/soulflames_embrace/summon

execute as @s at @s run spreadplayers ~ ~ 1 16 false @e[tag=UHCP_TyrionSoulflame]
execute as @e[tag=UHCP_TyrionSoulflame] run data modify entity @s Pos[1] set from entity @a[tag=UHCP_Owner,sort=nearest,limit=1] Pos[1]

tag @s remove UHCP_Owner