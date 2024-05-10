# Check if pane was thrown
execute as @e[type=item,distance=..8] if predicate uhcp:augments/tightly_packed run kill @s

# Check if item is in cursor
scoreboard players reset %success uhcp_aug_count
execute store success score %success uhcp_aug_count if items entity @s player.cursor *[minecraft:custom_data~{uhcp_lockedslot:1b}] run item replace entity @s player.cursor with air

execute store result score %panes uhcp_aug_count run clear @s *[minecraft:custom_data~{uhcp_lockedslot:1b}] 0
execute if score %panes uhcp_aug_count matches 10.. run clear @s *[minecraft:custom_data~{uhcp_lockedslot:1b}]
execute if score %panes uhcp_aug_count matches 10.. run function uhcp:augments/effects/gold/tightlypacked/regenerate

execute if score %success uhcp_aug_count matches 1 run function uhcp:augments/effects/gold/tightlypacked/checkslots

advancement revoke @s only uhcp:augments/tightly_packed_changed
