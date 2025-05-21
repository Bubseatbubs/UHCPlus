# Generate lobby menu
scoreboard players set @s uhcp_leave 1000
function uhcp:lobby/menu/head
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s player.crafting.0 with minecraft:air
item replace entity @s player.crafting.1 with minecraft:air
item replace entity @s player.crafting.2 with minecraft:air
item replace entity @s player.crafting.3 with minecraft:air
item replace entity @s player.cursor with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
execute at @s run kill @e[type=minecraft:item,distance=..4]

# Create Player Hotbar
function uhcp:lobby/menu/team
function uhcp:lobby/menu/patron
loot replace entity @s hotbar.2 loot uhcp:lobby_menu/skip_travel
function uhcp:lobby/menu/special_item
loot replace entity @s hotbar.6 loot uhcp:lobby_menu/settings_display
function uhcp:lobby/menu/spectate
function uhcp:lobby/menu/ready

# Fill Rest of Player Inventory
item replace entity @s container.9 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.10 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.11 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.12 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.13 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.14 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.15 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.16 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.17 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.18 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.19 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.20 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.21 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.22 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.23 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.24 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.25 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.26 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.27 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.28 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.29 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.30 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.31 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.32 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.33 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.34 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.35 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1

scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:lobby/update_menu
