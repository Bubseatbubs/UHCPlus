advancement revoke @s only uhcp:titans/killed_gerald
tellraw @a [{"text":"Gerald","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
tellraw @s [{"text":"You've slain"},{"text":" Gerald","color":"gold"},{"text":"! You gained a ton of loot!","color":"white"}]