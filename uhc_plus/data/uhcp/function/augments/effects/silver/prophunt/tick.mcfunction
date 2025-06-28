# Prop Hunt procedure; runs in uhcp:time
scoreboard players add @a[predicate=uhcp:augments/prop_hunt/sneaking] uhcp_aug_count 1
scoreboard players set @a[predicate=uhcp:augments/prop_hunt/halt] uhcp_aug_count 0
execute as @a[predicate=uhcp:augments/prop_hunt/countdown] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1 
execute as @a[predicate=uhcp:augments/prop_hunt/transform] at @s run function uhcp:augments/effects/silver/prophunt/transform
