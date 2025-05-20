# Determine pane regeneration strategy
execute if items entity @s container.28 * run return run function uhcp:augments/effects/gold/tightlypacked/remove/28
execute if predicate uhcp:augments/tightly_packed/swap run return run function uhcp:augments/effects/gold/tightlypacked/remove
kill @e[type=minecraft:item,distance=..8,predicate=uhcp:augments/tightly_packed/item]
