tag @s add UHCP_Init
execute unless predicate uhcp:relics/dragons_protection_max run return run function uhcp:relics/dragons_protection/fail
summon marker ~ ~ ~ {Tags:["UHCP_DragonsProtection","UHCP_Summon","UHCP_New"]}
playsound entity.ender_dragon.growl master @a[distance=..8] ~ ~ ~ 1 1 1
playsound minecraft:block.stone.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle block obsidian ~ ~ ~ 3 3 3 0.01 1000 normal
effect give @s resistance 4 100 false
execute if score @s uhcp_a_selectedAugment matches 205 at @s run function uhcp:relics/dragons_protection/fireballlocations

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Gets team value
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_initStatus = @s uhcp_initStatus
execute at @e[tag=UHCP_New,sort=nearest,limit=1] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air
execute as @e[distance=..3,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_Init,sort=nearest,limit=1] uhcp_initStatus at @s run tp @s ~ ~4 ~
tp @s ~ ~1 ~
tag @s remove UHCP_Init
tag @e remove UHCP_New

scoreboard players set %damage uhcp_a_durability -1000000
item modify entity @s armor.head uhcp:update_dur
function uhcp:relics/durability/armor/helmet

kill @e[predicate=uhcp:ender_eye/dragons_watchful_eye,sort=nearest,limit=1]
