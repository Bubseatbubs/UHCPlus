advancement revoke @s only uhcp:augments/radiant_blessing

execute unless score %time uhcp_gameTime matches 24000.. run return fail

scoreboard players set @s uhcp_a_tier 1
give @s diamond 32
give @s gold_ingot 20
execute at @s run particle end_rod ~ ~ ~ 0.1 2 0.1 0.1 50 normal
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.5 1
xp set @s 20 levels
effect give @s absorption 10 4 true