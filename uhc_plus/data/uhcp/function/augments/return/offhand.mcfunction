#>  uhcp:augments/return/offhand
#   Returns the player's item if they made a strange selection
#
# @within uhcp:augments/offhand

# Replace empty slot with augment selection item from offhand
function uhcp:augments/return/locate/offhand

# Finalize
item replace entity @s weapon.offhand with minecraft:air
function uhcp:augments/retry
