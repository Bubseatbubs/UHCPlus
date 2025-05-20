# Start game with no augments
execute if score %tier uhcp_aug_tier matches -1 run return run function uhcp:start/augments/none

# Augment logic
function uhcp:start/augments/tier/notification
title @a title [{"text":"Aug","color":"#2c50f2","bold":true},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"}]
function uhcp:start/augments/patron

gamemode adventure @a[tag=!UHCP_Spectator]

effect give @a[tag=!UHCP_Spectator] minecraft:resistance infinite 5 true
effect give @a[tag=!UHCP_Spectator] minecraft:saturation infinite 255 true
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/augments/attributes

bossbar set uhcp:augment players @a

# Recipes and advancements (reset now and later)
function uhcp:start/advancements/reset_all

# Start augment selection countdown 
scoreboard players set %augment_countdown uhcp_game_time 901

# Determine augment tier
execute if score %tier uhcp_aug_tier matches 0 run execute as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/silver
execute if score %tier uhcp_aug_tier matches 1 run execute as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/gold
execute if score %tier uhcp_aug_tier matches 2 run execute as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/prismatic

# Augment selection glass panes and inventory
item replace entity @a[tag=!UHCP_Spectator] hotbar.0 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.1 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.2 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.6 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
execute unless score %patrons uhcp_settings matches 1 run item replace entity @a[tag=!UHCP_Spectator] hotbar.7 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.8 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1

item replace entity @a[tag=!UHCP_Spectator] container.9 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.10 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.11 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.12 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.13 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.14 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.15 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.16 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.17 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.18 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.19 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.20 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.21 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.22 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.23 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.24 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.25 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.26 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.27 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.28 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.29 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.30 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:1b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
item replace entity @a[tag=!UHCP_Spectator] container.31 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:2b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
item replace entity @a[tag=!UHCP_Spectator] container.32 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:3b,uhcp_augPane:1b},minecraft:item_name={"text":"Reroll Augment Choice","color":"gold"},minecraft:lore=[{"color":"gray","text":"Select this option to reroll the Augment"},{"color":"gray","text":"below. You may reroll each slot once."}],minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
item replace entity @a[tag=!UHCP_Spectator] container.33 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.34 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a[tag=!UHCP_Spectator] container.35 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1

item replace entity @a[tag=!UHCP_Spectator] armor.head with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] armor.chest with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] armor.legs with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] armor.feet with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] player.crafting.0 with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] player.crafting.1 with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] player.crafting.2 with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] player.crafting.3 with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] player.cursor with minecraft:air
item replace entity @a[tag=!UHCP_Spectator] weapon.offhand with minecraft:air

tag @a[tag=!UHCP_Spectator] add UHCP_ChoosingItem

# Clear spectators
clear @a[tag=UHCP_Spectator]

# Play game start sounds to all players
execute as @a at @s run function uhcp:start/augments/sounds
