# Replace player's item from barrel
data modify block 0 0 0 Items[{Slot:0b}] set from storage uhcp:hunting_call Horn
scoreboard players set @s uhcp_leave 1000
item replace entity @s weapon.mainhand from block 0 0 0 container.0
scoreboard players reset @s uhcp_leave
