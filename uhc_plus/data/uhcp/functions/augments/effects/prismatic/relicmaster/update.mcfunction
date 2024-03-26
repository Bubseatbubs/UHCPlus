loot give @s loot uhcp:consumables/relic_invoker

#execute store result score %health uhcp_aug_count run attribute @s generic.max_health get 1
#scoreboard players add %health uhcp_aug_count 6
#execute store result storage uhcp:health input.health float 1 run scoreboard players get %health uhcp_aug_count
#function uhcp:augments/effects/prismatic/relicmaster/givehearts with storage uhcp:health input
#effect give @s minecraft:regeneration 1 4 true