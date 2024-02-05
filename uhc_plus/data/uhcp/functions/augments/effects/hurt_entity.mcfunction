
advancement revoke @s only uhcp:augments/hurt_entity
execute if score @s uhcp_a_selectedAugment matches 0 at @s run function uhcp:augments/effects/gold/beekeeper/hit
execute if score @s[tag=UHCP_Beekeeper] uhcp_a_selectedAugment matches 237 at @s run function uhcp:augments/effects/prismatic/gloryofra/beekeeper