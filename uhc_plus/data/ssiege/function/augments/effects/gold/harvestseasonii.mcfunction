execute store result score %random uhcp_aug_count run random value 0..9
execute if score %random uhcp_aug_count matches ..5 run return fail

execute at @s positioned ^ ^ ^2 rotated ~ 0 run summon minecraft:item ~ ~ ~ {PickupDelay:20s,Item:{id:"minecraft:golden_apple",count:1},Glowing:1b}
execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 1