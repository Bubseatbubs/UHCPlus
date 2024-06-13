advancement revoke @s only uhcp:augments/radiant_blessing

#execute unless score %time uhcp_game_time matches 24000.. run return fail

scoreboard players set @s uhcp_aug_tier 1

execute store result score %random uhcp_aug_count run random value 0..4
execute if score %random uhcp_aug_count matches 0 run function uhcp:augments/effects/prismatic/radiantblessing/loot/0
execute if score %random uhcp_aug_count matches 1 run function uhcp:augments/effects/prismatic/radiantblessing/loot/1
execute if score %random uhcp_aug_count matches 2 run function uhcp:augments/effects/prismatic/radiantblessing/loot/2
execute if score %random uhcp_aug_count matches 3 run function uhcp:augments/effects/prismatic/radiantblessing/loot/3
execute if score %random uhcp_aug_count matches 4 run function uhcp:augments/effects/prismatic/radiantblessing/loot/4

execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 2 0.1 0.1 50 normal
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5 1
effect give @s minecraft:absorption 10 4 true