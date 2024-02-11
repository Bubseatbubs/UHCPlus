tag @s add UHCP_Init
execute unless predicate uhcp:relics/dragons_protection_max run return run function uhcp:relics/dragons_protection/fail
summon marker ~ ~ ~ {Tags:["UHCP_DragonsProtection","UHCP_Summon","UHCP_New"]}
playsound entity.ender_dragon.growl master @a[distance=..8] ~ ~ ~ 1 1 1
playsound minecraft:block.stone.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle block obsidian ~ ~ ~ 3 3 3 0.01 1000 normal
effect give @s resistance 4 100 false

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Gets team value
execute store result score @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team run scoreboard players get @s uhcp_team
execute at @e[tag=UHCP_New,sort=nearest,limit=1] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air
execute as @e[distance=..3] unless score @s uhcp_team = @a[tag=UHCP_Init,sort=nearest,limit=1] uhcp_team at @s run tp @s ~ ~4 ~
tp @s ~ ~1 ~
tag @s remove UHCP_Init
tag @e remove UHCP_New

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 165
item modify entity @s armor.head uhcp:update_dur

kill @e[predicate=uhcp:ender_eye/dragons_watchful_eye,sort=nearest,limit=1]