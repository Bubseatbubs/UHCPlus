# Reroll first augment selection item
tag @s add UHCP_AugmentRerollSlot1
tag @s add UHCP_LoadAugment
function uhcp:augments/current_store
item replace entity @s container.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.4
item replace entity @s container.30 with minecraft:red_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s player.cursor with minecraft:air
tag @e remove UHCP_CurrentStoreAugment
tag @s remove UHCP_LoadAugment
