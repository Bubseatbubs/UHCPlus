# TESTING ONLY
execute unless score %game uhcp_initStatus matches 1 run return fail
execute if score %time uhcp_initStatus matches 1 run return fail
execute unless score @s uhcp_aug_choosing matches 1 run return fail

# Roll augments again during augment selection
scoreboard players set @s uhcp_aug_choosing 0
tag @s remove UHCP_AugmentRerollSlot1
tag @s remove UHCP_AugmentRerollSlot2
tag @s remove UHCP_AugmentRerollSlot3
tag @s add UHCP_GeneratingAugments

execute as @e[tag=UHCP_StoreAugment] if score @s uhcp_id = @a[tag=UHCP_GeneratingAugments,limit=1] uhcp_id run kill @s
kill @e[type=minecraft:item,predicate=uhcp:dimensions/uhcp/main]

item replace entity @s container.30 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:1b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
item replace entity @s container.31 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:2b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
item replace entity @s container.32 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:3b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1

execute if score %tier uhcp_aug_tier matches 0 run function uhcp:augments/roll/silver
execute if score %tier uhcp_aug_tier matches 1 run function uhcp:augments/roll/gold
execute if score %tier uhcp_aug_tier matches 2 run function uhcp:augments/roll/prismatic

scoreboard players set @s uhcp_aug_choosing 1
