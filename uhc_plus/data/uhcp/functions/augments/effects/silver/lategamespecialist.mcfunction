advancement revoke @s only uhcp:augments/late_game_specialist
execute store result score @s uhcp_a_tier run xp query @s levels

execute if score @s uhcp_a_tier matches ..24 run return 0

give @s gold_ingot 40
scoreboard players set @s uhcp_a_tier 100
