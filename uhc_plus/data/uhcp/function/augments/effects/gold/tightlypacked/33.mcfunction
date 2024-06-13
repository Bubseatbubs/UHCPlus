execute if items entity @s container.33 * run function uhcp:augments/effects/gold/tightlypacked/drop/33
item replace entity @s container.33 with minecraft:gray_stained_glass_pane[custom_data={uhcp_lockedslot:1b},item_name='{"text":"Locked Slot"}',lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},max_stack_size=1] 1
scoreboard players set @s uhcp_initStatus 1
