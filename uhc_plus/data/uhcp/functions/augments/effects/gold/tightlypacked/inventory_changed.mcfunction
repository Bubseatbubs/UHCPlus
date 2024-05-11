# Check if pane was thrown
kill @e[type=minecraft:item,distance=..8,predicate=uhcp:augments/tightly_packed]

scoreboard players set @s uhcp_initStatus 0
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.27 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/27
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.28 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/28
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.29 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/29
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.30 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/30
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.31 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/31
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.32 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/32
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.33 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/33
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.34 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/34
execute store result score @s[scores={uhcp_initStatus=0}] uhcp_initStatus unless items entity @s container.35 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/35

execute store result score @s uhcp_aug_count run clear @s *[minecraft:custom_data~{uhcp_lockedslot:1b}] 0
execute if score @s uhcp_aug_count matches ..9 run return run function uhcp:augments/effects/gold/tightlypacked/remove

execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.0 with minecraft:air
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.1 with minecraft:air
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.2 with minecraft:air
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.3 with minecraft:air
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.4 with minecraft:air
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.5 with minecraft:air
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.6 with minecraft:air
execute if items entity @s container.7 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.7 with minecraft:air
execute if items entity @s container.8 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.8 with minecraft:air
execute if items entity @s container.9 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.9 with minecraft:air
execute if items entity @s container.10 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.10 with minecraft:air
execute if items entity @s container.11 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.11 with minecraft:air
execute if items entity @s container.12 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.12 with minecraft:air
execute if items entity @s container.13 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.13 with minecraft:air
execute if items entity @s container.14 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.14 with minecraft:air
execute if items entity @s container.15 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.15 with minecraft:air
execute if items entity @s container.16 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.16 with minecraft:air
execute if items entity @s container.17 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.17 with minecraft:air
execute if items entity @s container.18 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.18 with minecraft:air
execute if items entity @s container.19 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.19 with minecraft:air
execute if items entity @s container.20 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.20 with minecraft:air
execute if items entity @s container.21 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.21 with minecraft:air
execute if items entity @s container.22 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.22 with minecraft:air
execute if items entity @s container.23 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.23 with minecraft:air
execute if items entity @s container.24 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.24 with minecraft:air
execute if items entity @s container.25 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.25 with minecraft:air
execute if items entity @s container.26 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.26 with minecraft:air
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s player.cursor with minecraft:air

item replace entity @s container.27 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.28 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.29 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.30 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.31 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.32 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.33 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.34 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
item replace entity @s container.35 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1

playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
advancement revoke @s only uhcp:augments/tightly_packed
