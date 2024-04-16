tag @s add UHCP_CurrentBoneCage
playsound entity.skeleton.hurt master @s ~ ~ ~ 1 1 1
summon item ~ ~ ~ {Age:5800,Motion:[0.0,0.5,0.0],Glowing:1b,PickupDelay:20,Tags:["UHCP_BoneCageBone"],Item:{id:"minecraft:bone",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_bonecage:1b}}}}
summon item ~ ~ ~ {Age:5800,Motion:[0.0,0.5,0.0],Glowing:1b,PickupDelay:20,Tags:["UHCP_BoneCageBone"],Item:{id:"minecraft:bone",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_bonecage:1b}}}}
execute as @e[type=item,tag=UHCP_BoneCageBone] at @s run function uhcp:armaments/bone_cage/init_bone
tag @s remove UHCP_CurrentBoneCage