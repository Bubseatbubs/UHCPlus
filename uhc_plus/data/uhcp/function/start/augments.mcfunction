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
scoreboard players set %augment_countdown uhcp_game_time 900

# Determine augment tier
function uhcp:start/augments/tier

# Augment selection glass panes and inventory
item replace entity @a[tag=!UHCP_Spectator] hotbar.0 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.1 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.2 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.6 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
execute unless score %patrons uhcp_settings matches 1 run item replace entity @a[tag=!UHCP_Spectator] hotbar.7 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] hotbar.8 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1

item replace entity @a[tag=!UHCP_Spectator] inventory.0 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.1 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.2 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.3 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.4 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.5 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.6 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.7 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.8 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.9 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.10 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.11 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.12 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.13 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.14 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.15 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.16 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.17 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.18 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.19 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.20 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.21 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:1b,uhcp_augPane:1b},minecraft:item_name='{"text":"Reroll Augment Choice","color":"gold"}',minecraft:lore=['{"color":"gray","text":"Select this option to reroll the Augment"}','{"color":"gray","text":"below. You can only reroll a slot once."}'],minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.22 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:2b,uhcp_augPane:1b},minecraft:item_name='{"text":"Reroll Augment Choice","color":"gold"}',minecraft:lore=['{"color":"gray","text":"Select this option to reroll the Augment"}','{"color":"gray","text":"below. You can only reroll a slot once."}'],minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.23 with minecraft:lime_stained_glass_pane[minecraft:custom_data={uhcp_augReroll:1b,uhcp_augRerollSlot:3b,uhcp_augPane:1b},minecraft:item_name='{"text":"Reroll Augment Choice","color":"gold"}',minecraft:lore=['{"color":"gray","text":"Select this option to reroll the Augment"}','{"color":"gray","text":"below. You can only reroll a slot once."}'],minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.24 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.25 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @a[tag=!UHCP_Spectator] inventory.26 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1

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
