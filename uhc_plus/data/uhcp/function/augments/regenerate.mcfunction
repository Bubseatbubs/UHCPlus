#>  uhcp:augments/regenerate
#   Regenerates a player's options if they reroll a slot or if their inventory changes in a strange manner
#
# @within  uhcp:augments/validate

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s player.cursor with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
function uhcp:augments/generate/panes

tag @s add UHCP_LoadAugment
execute as @e[tag=UHCP_StoreAugment] if score @s uhcp_id = @p[tag=UHCP_LoadAugment] uhcp_id run tag @s add UHCP_CurrentStoreAugment
execute unless entity @s[tag=UHCP_AugmentRerollSlot1] run item replace entity @s hotbar.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.0
execute unless entity @s[tag=UHCP_AugmentRerollSlot2] run item replace entity @s hotbar.4 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.1
execute unless entity @s[tag=UHCP_AugmentRerollSlot3] run item replace entity @s hotbar.5 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.2
item replace entity @s hotbar.7 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.3

execute if entity @s[tag=UHCP_AugmentRerollSlot1] run item replace entity @s hotbar.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.4
execute if entity @s[tag=UHCP_AugmentRerollSlot2] run item replace entity @s hotbar.4 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.5
execute if entity @s[tag=UHCP_AugmentRerollSlot3] run item replace entity @s hotbar.5 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.6
tag @e remove UHCP_CurrentStoreAugment
tag @s remove UHCP_LoadAugment
