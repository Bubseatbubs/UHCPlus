execute if score @s uhcp_initStatus matches 0 run return run advancement revoke @s only uhcp:augments/tightly_packed

execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.0 with minecraft:air
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.1 with minecraft:air
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.2 with minecraft:air
execute if items entity @s container.3 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.3 with minecraft:air
execute if items entity @s container.4 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.4 with minecraft:air
execute if items entity @s container.5 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.5 with minecraft:air
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.6 with minecraft:air
execute if items entity @s container.7 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.7 with minecraft:air
execute if items entity @s container.8 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s container.8 with minecraft:air
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s player.cursor with minecraft:air

playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
advancement revoke @s only uhcp:augments/tightly_packed
