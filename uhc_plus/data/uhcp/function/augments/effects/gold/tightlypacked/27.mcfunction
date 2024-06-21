execute if items entity @s container.27 * run function uhcp:augments/effects/gold/tightlypacked/drop/27
item replace entity @s container.27 with minecraft:gray_stained_glass_pane[minecraft:custom_data={uhcp_lockedslot:1b},minecraft:item_name='{"text":"Locked Slot"}',minecraft:lore=['{"bold":true,"color":"dark_red","text":"This slot is locked because"}','{"bold":true,"color":"dark_red","text":"of Tightly Packed."}'],minecraft:enchantments={levels:{"minecraft:blast_protection":1},show_in_tooltip:false},minecraft:max_stack_size=1] 1
scoreboard players set @s uhcp_initStatus 1
