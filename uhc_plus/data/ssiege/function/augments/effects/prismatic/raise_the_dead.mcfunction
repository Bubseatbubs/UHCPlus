summon zombie ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,IsBaby:0b,Tags:["SSIEGE_Raise","SSIEGE_NewRaise"],equipment:{mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":1}}}},drop_chances:{mainhand:0.000},attributes:[{id:"minecraft:movement_speed",base:0.345}]}

loot replace entity @n[type=zombie,tag=SSIEGE_NewRaise] armor.head loot ssiege:player_head_armored
execute as @n[type=zombie,tag=SSIEGE_NewRaise] run data modify entity @s CustomName.text set from entity @s equipment.head.components."minecraft:profile".name
data modify entity @n[type=zombie,tag=SSIEGE_NewRaise] equipment.chest set from entity @s equipment.chest
data modify entity @n[type=zombie,tag=SSIEGE_NewRaise] equipment.legs set from entity @s equipment.legs
data modify entity @n[type=zombie,tag=SSIEGE_NewRaise] equipment.feet set from entity @s equipment.feet

execute as @s[team=blue] run execute as @n[type=zombie,tag=SSIEGE_NewRaise] run team join blue
execute as @s[team=red] run execute as @n[type=zombie,tag=SSIEGE_NewRaise] run team join red
execute at @n[type=zombie,tag=SSIEGE_NewRaise] run playsound entity.zombie.ambient master @a[distance=..32] ~ ~ ~ 1 1 0.15
execute at @s run tellraw @a[distance=..32] ["",{"text":"[Raise the Dead]","bold":true,"color":"aqua"},{"text":" "},{"selector":"@s"},{"text":" was reanimated!"}]

execute as @e[tag=SSIEGE_NewRaise] run tag @s remove SSIEGE_NewRaise