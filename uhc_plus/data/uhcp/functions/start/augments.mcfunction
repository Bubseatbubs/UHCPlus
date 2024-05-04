# Augment logic
execute at @s run tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
execute at @s run forceload add ~ ~
execute unless score %tier uhcp_aug_tier matches -1 run function uhcp:augments/init
execute if score %tier uhcp_aug_tier matches -1 run clear @s
execute if score %tier uhcp_aug_tier matches -1 run scoreboard players set @s uhcp_augment -1
gamemode adventure @s
