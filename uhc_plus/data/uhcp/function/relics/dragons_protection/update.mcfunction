scoreboard players add @s uhcp_timer 1
scoreboard players add @s[tag=UHCP_EndChosen] uhcp_aug_count 1

execute if score %game uhcp_initStatus matches 1 run function uhcp:relics/dragons_protection/update/game
execute unless score %game uhcp_initStatus matches 1 run function uhcp:relics/dragons_protection/update/lobby

execute at @s[scores={uhcp_timer=20}] run playsound minecraft:block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute at @s[scores={uhcp_timer=40}] run playsound minecraft:block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute at @s[scores={uhcp_timer=60}] run playsound minecraft:block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1

execute at @s[tag=UHCP_EndChosen,scores={uhcp_aug_count=5..}] as @e[tag=UHCP_DragonBreath,distance=..20,sort=random,limit=1] at @s positioned ~ ~10 ~ run function uhcp:relics/dragons_protection/summonfireball
scoreboard players reset @s[scores={uhcp_aug_count=5..}] uhcp_aug_count

execute if score @s uhcp_timer matches ..80 run return fail

execute at @s[tag=UHCP_EndChosen] as @a[distance=..4] if score @s uhcp_team = @n[tag=UHCP_EndChosen] uhcp_team run effect give @s minecraft:resistance 45 0 false
execute at @s[tag=UHCP_EndChosen] as @a[distance=..4] if score @s uhcp_team = @n[tag=UHCP_EndChosen] uhcp_team run effect give @s minecraft:fire_resistance 45 0 false
execute at @s[tag=UHCP_EndChosen] run tag @e[tag=UHCP_DragonBreath,distance=..20] add UHCP_TeleportBack
execute at @s[tag=UHCP_EndChosen] run tag @e[distance=..20] remove UHCP_DragonBreath
execute as @s[tag=UHCP_EndChosen] in uhcp:main run tp @e[tag=UHCP_TeleportBack] 0 -63 0
execute as @s[tag=UHCP_EndChosen] run tag @e remove UHCP_TeleportBack
fill ~-2 ~-1 ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:obsidian
playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~ ~ 3 3 3 0.01 1000 normal

kill @s
