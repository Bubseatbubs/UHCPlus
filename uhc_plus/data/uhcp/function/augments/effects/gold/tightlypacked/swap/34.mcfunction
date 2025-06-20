# Return item to proper slot
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s player.cursor from entity @s container.34
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s weapon.offhand from entity @s container.34
execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.0 from entity @s container.34
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.1 from entity @s container.34
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.2 from entity @s container.34
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.3 from entity @s container.34
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.4 from entity @s container.34
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.5 from entity @s container.34
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.6 from entity @s container.34
execute if items entity @s container.7 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run item replace entity @s container.7 from entity @s container.34
item replace entity @s container.8 from entity @s container.34
