advancement revoke @s only uhcp:relics/the_harvester/killed_hostile
execute store result score %random uhcp_aug_count run random value 1..100
execute if score %random uhcp_aug_count matches ..15 run give @s golden_apple
execute if score %random uhcp_aug_count matches ..15 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1