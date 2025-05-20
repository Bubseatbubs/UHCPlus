# Grant two stacks for killing player
advancement revoke @s only uhcp:augments/glory_of_ra/killed_player
scoreboard players add @s uhcp_aug_gloryOfRa 2

scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:augments/ra/sundisks
execute unless score @s uhcp_lava_currentLayers matches 2 run function uhcp:augments/effects/prismatic/gloryofra/item
scoreboard players reset @s uhcp_leave
