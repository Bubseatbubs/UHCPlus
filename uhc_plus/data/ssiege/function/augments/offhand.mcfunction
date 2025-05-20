# Case: player's offhand slot contains augment selection item; return item to player
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/offhand

# Case: player's offhand slot contains glass pane
item replace entity @s weapon.offhand with minecraft:air
function uhcp:augments/generate/panes
function uhcp:augments/retry
