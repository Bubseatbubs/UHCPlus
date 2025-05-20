# Reroll first augment selection item
tag @s add UHCP_AugmentRerollSlot1
item replace entity @s container.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.4
item replace entity @s container.30 with minecraft:red_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
