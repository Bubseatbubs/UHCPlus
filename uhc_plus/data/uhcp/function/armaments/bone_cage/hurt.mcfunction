tag @s add UHCP_CurrentBoneCage
playsound minecraft:entity.skeleton.hurt master @s ~ ~ ~ 1 1 1
summon minecraft:item ~ ~ ~ {Age:5800,Motion:[0.0d,0.5d,0.0d],Glowing:1b,PickupDelay:20s,Tags:["UHCP_BoneCageBone"],Item:{id:"minecraft:bone",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_bonecage:1b}}}}
summon minecraft:item ~ ~ ~ {Age:5800,Motion:[0.0d,0.5d,0.0d],Glowing:1b,PickupDelay:20s,Tags:["UHCP_BoneCageBone"],Item:{id:"minecraft:bone",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_bonecage:1b}}}}
execute as @e[type=minecraft:item,tag=UHCP_BoneCageBone] at @s run function uhcp:armaments/bone_cage/init_bone
tag @s remove UHCP_CurrentBoneCage
