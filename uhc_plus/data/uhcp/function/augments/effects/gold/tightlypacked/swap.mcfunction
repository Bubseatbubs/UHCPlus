# Remove pane swapped into slot
execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/0
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/1
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/2
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/3
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/4
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/5
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/6
execute if items entity @s container.7 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/7
execute if items entity @s container.8 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/8
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/offhand

item replace entity @s player.cursor with minecraft:air
function uhcp:augments/effects/gold/tightlypacked/end
