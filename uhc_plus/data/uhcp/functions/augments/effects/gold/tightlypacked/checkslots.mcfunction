advancement revoke @s only uhcp:augments/tightly_packed
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute unless items entity @s container.27 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/27
execute unless items entity @s container.28 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/28
execute unless items entity @s container.29 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/29
execute unless items entity @s container.30 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/30
execute unless items entity @s container.31 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/31
execute unless items entity @s container.32 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/32
execute unless items entity @s container.33 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/33
execute unless items entity @s container.34 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/34
execute unless items entity @s container.35 *[minecraft:custom_data~{uhcp_lockedslot:1b}] run function uhcp:augments/effects/gold/tightlypacked/35

function uhcp:augments/effects/gold/tightlypacked/regenerate