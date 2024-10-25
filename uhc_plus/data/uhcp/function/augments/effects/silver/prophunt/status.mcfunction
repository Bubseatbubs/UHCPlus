# Determine player's status
execute if predicate uhcp:is_sneaking run return run function uhcp:augments/effects/silver/prophunt/sneaking
execute unless score @s uhcp_aug_count matches 1.. run return fail
execute if score @s uhcp_aug_count matches 20.. run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_aug_count 0
