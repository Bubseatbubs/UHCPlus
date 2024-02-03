advancement revoke @s only uhcp:relics/killed_hostile_with_harvester
execute store result score %random uhcp_a_count run random value 1..10
execute if score %random uhcp_a_count matches 10 run give @s golden_apple
execute if score %random uhcp_a_count matches 10 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1