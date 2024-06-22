advancement revoke @s only uhcp:augments/prop_hunt
scoreboard players add @s uhcp_aug_count 1
playsound minecraft:block.note_block.pling master @s[scores={uhcp_aug_count=20}] ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s[scores={uhcp_aug_count=40}] ~ ~ ~ 1 1 1

execute unless score @s uhcp_aug_count matches 60.. run return 0
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
execute unless score @s uhcp_aug_tier matches 1 run return run function uhcp:augments/effects/silver/prophunt/transform
function uhcp:augments/effects/silver/prophunt/reset
