
advancement revoke @s only uhcp:augments/hurt_entity
execute if score @s uhcp_a_selectedAugment matches 0 at @s run function uhcp:augments/effects/gold/beekeeper/hit
execute if score @s uhcp_a_selectedAugment matches 230 at @s run function uhcp:augments/effects/prismatic/radiantrelics/soulflamesaber/hit
execute if score @s uhcp_a_selectedAugment matches 231 at @s run function uhcp:augments/effects/prismatic/radiantrelics/voltrune/hit