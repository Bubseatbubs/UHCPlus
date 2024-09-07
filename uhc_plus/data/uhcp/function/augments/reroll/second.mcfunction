# Reroll second augment selection item
tag @s add UHCP_AugmentRerollSlot2
item replace entity @s container.4 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.5
item replace entity @s container.31 with minecraft:red_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
