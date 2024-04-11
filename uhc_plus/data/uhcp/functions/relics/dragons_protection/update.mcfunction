scoreboard players add @s uhcp_timer 1
execute if entity @s[tag=UHCP_EndChosen] run scoreboard players add @s uhcp_aug_count 1

execute if score %game uhcp_initStatus matches 1 run fill ~1 ~ ~2 ~-1 ~2 ~2 minecraft:obsidian
execute if score %game uhcp_initStatus matches 1 run fill ~1 ~ ~-2 ~-1 ~2 ~-2 minecraft:obsidian
execute if score %game uhcp_initStatus matches 1 run fill ~2 ~ ~1 ~2 ~2 ~-1 minecraft:obsidian
execute if score %game uhcp_initStatus matches 1 run fill ~-2 ~ ~1 ~-2 ~2 ~-1 minecraft:obsidian
execute if score %game uhcp_initStatus matches 1 run fill ~1 ~3 ~1 ~-1 ~3 ~-1 minecraft:obsidian
execute if score %game uhcp_initStatus matches 1 run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:obsidian

execute unless score %game uhcp_initStatus matches 1 run fill ~1 ~ ~2 ~-1 ~2 ~2 minecraft:obsidian keep
execute unless score %game uhcp_initStatus matches 1 run fill ~1 ~ ~-2 ~-1 ~2 ~-2 minecraft:obsidian keep
execute unless score %game uhcp_initStatus matches 1 run fill ~2 ~ ~1 ~2 ~2 ~-1 minecraft:obsidian keep
execute unless score %game uhcp_initStatus matches 1 run fill ~-2 ~ ~1 ~-2 ~2 ~-1 minecraft:obsidian keep
execute unless score %game uhcp_initStatus matches 1 run fill ~1 ~3 ~1 ~-1 ~3 ~-1 minecraft:obsidian keep
execute unless score %game uhcp_initStatus matches 1 run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:obsidian keep

execute if score @s uhcp_timer matches 20 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 40 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 60 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1

execute if score @s uhcp_aug_count matches 5.. if entity @s[tag=UHCP_EndChosen] at @s as @e[tag=UHCP_DragonBreath,distance=..20,sort=random,limit=1] at @s run function uhcp:relics/dragons_protection/summonfireball
execute if score @s uhcp_aug_count matches 5.. run scoreboard players reset @s uhcp_aug_count

execute if score @s uhcp_timer matches ..80 run return fail

execute if entity @s[tag=UHCP_EndChosen] at @s as @a[distance=..4] if score @s uhcp_team = @e[tag=UHCP_EndChosen,sort=nearest,limit=1] uhcp_team run effect give @s resistance 45 0 false
execute if entity @s[tag=UHCP_EndChosen] at @s as @a[distance=..4] if score @s uhcp_team = @e[tag=UHCP_EndChosen,sort=nearest,limit=1] uhcp_team run effect give @s fire_resistance 45 0 false
execute if entity @s[tag=UHCP_EndChosen] at @s run tag @e[tag=UHCP_DragonBreath,distance=..20] add UHCP_TeleportBack
execute if entity @s[tag=UHCP_EndChosen] at @s run tag @e[distance=..20] remove UHCP_DragonBreath
execute if entity @s[tag=UHCP_EndChosen] at @s in uhcp:main run tp @e[tag=UHCP_TeleportBack] 0 -63 0
execute if entity @s[tag=UHCP_EndChosen] run tag @e remove UHCP_TeleportBack
fill ~1 ~ ~-2 ~-1 ~2 ~-2 air replace minecraft:obsidian
fill ~2 ~ ~1 ~2 ~2 ~-1 air replace minecraft:obsidian
fill ~1 ~ ~2 ~-1 ~2 ~2 air replace minecraft:obsidian
fill ~-2 ~ ~1 ~-2 ~2 ~-1 air replace minecraft:obsidian
fill ~1 ~3 ~1 ~-1 ~3 ~-1 air replace minecraft:obsidian
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace minecraft:obsidian
playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle block{block_state: "minecraft:obsidian"} ~ ~ ~ 3 3 3 0.01 1000 normal

kill @s