tag @s add UHCP_CurrentBoneCage
playsound entity.skeleton.hurt master @s ~ ~ ~ 1 1 1
loot spawn ~ ~ ~ loot uhcp:armaments/bone_cage/bone
execute as @e[type=item,predicate=uhcp:armaments/bone_cage/bone] run data modify entity @s Owner set from entity @p[tag=UHCP_CurrentBoneCage] UUID
tag @s remove UHCP_CurrentBoneCage