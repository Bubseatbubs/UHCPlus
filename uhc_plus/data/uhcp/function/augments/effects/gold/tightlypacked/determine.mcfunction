# Determine whether there is missing or extra pane
scoreboard players set @s uhcp_leave 1000
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if predicate uhcp:augments/tightly_packed/missing run return run function uhcp:augments/effects/gold/tightlypacked/regenerate
execute if predicate uhcp:augments/tightly_packed/swap run return run function uhcp:augments/effects/gold/tightlypacked/swap

execute if items entity @s container.9 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/9
execute if items entity @s container.10 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/10
execute if items entity @s container.11 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/11
execute if items entity @s container.12 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/12
execute if items entity @s container.13 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/13
execute if items entity @s container.14 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/14
execute if items entity @s container.15 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/15
execute if items entity @s container.16 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/16
execute if items entity @s container.17 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/17
execute if items entity @s container.18 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/18
execute if items entity @s container.19 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/19
execute if items entity @s container.20 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/20
execute if items entity @s container.21 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/21
execute if items entity @s container.22 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/22
execute if items entity @s container.23 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/23
execute if items entity @s container.24 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/24
execute if items entity @s container.25 *[minecraft:custom_data~{uhcp_lockedSlot:true}] run return run function uhcp:augments/effects/gold/tightlypacked/remove/25

item replace entity @s container.26 with minecraft:air
function uhcp:augments/effects/gold/tightlypacked/end
