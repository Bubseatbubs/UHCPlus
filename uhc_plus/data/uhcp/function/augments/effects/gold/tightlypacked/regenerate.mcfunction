# Regenerate panes
execute unless items entity @s container.27 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/27
execute unless items entity @s container.28 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/28
execute unless items entity @s container.29 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/29
execute unless items entity @s container.30 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/30
execute unless items entity @s container.31 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/31
execute unless items entity @s container.32 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/32
execute unless items entity @s container.33 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/33
execute unless items entity @s container.34 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run return run function uhcp:augments/effects/gold/tightlypacked/34

function uhcp:augments/effects/gold/tightlypacked/regenerate/35
item replace entity @s container.35 with minecraft:gray_stained_glass_pane[minecraft:custom_data={uhcp_lockedslot:1b},minecraft:item_name={"text":"Locked Slot","color":"yellow"},minecraft:lore=[{"bold":true,"color":"dark_red","text":"This slot is locked due"},{"bold":true,"color":"dark_red","text":"to Tightly Packed."}],minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:max_stack_size=1,minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]}] 1
function uhcp:augments/effects/gold/tightlypacked/end
