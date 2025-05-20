execute unless score @s uhcp_aug_tier matches 1 if score @s uhcp_augment matches 25 run return run function uhcp:augments/effects/gold/scavengerhunt/modify
scoreboard players set @s uhcp_leave 1000
clear @s *[minecraft:custom_data~{uhcp_scavengerflyer:true}]
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
