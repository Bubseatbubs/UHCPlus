advancement revoke @s only uhcp:augments/radiant_blessing

execute unless score %time uhcp_game_time matches 24000.. run return fail

scoreboard players set @s uhcp_aug_tier 1
give @s enchanted_golden_apple
execute at @s run particle end_rod ~ ~ ~ 0.1 2 0.1 0.1 50 normal
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.5 1
effect give @s absorption 10 4 true