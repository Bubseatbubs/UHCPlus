scoreboard players reset %diff uhcp_aug_count
execute store result score %diff uhcp_aug_count run scoreboard players operation @s uhcp_aug_tier -= @s uhcp_aug_count
scoreboard players remove %diff uhcp_aug_count 1
execute if score %diff uhcp_aug_count matches 0 run playsound item.shield.block master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute if score %diff uhcp_aug_count matches 1.. run playsound entity.panda.hurt master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute store result storage uhcp:panda_damage damage.value int 1 run scoreboard players get %diff uhcp_aug_count
scoreboard players operation @s uhcp_aug_tier = @s uhcp_aug_count
execute as @p[tag=UHCP_Owner] if predicate uhcp:was_not_hurt_recently at @s run function uhcp:augments/effects/prismatic/kungfupanda/damage_owner with storage uhcp:panda_damage damage