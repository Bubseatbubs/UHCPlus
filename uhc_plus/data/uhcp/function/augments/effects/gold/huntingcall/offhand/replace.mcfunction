# Replace player's item from barrel
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items[{Slot:0b}] set from storage uhcp:hunting_call Horn
item replace entity @s weapon.offhand from block 0 0 0 container.0
