advancement revoke @s only uhcp:titans/killed_infernus

tellraw @a [{"text":"Infernus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot spawn ~ ~ ~ loot uhcp:consumables/portable_lava_pool
loot spawn ~ ~ ~ loot uhcp:consumables/portable_lava_pool
loot spawn ~ ~ ~ loot uhcp:consumables/portable_lava_pool
loot spawn ~ ~ ~ loot uhcp:consumables/portable_lava_pool
loot spawn ~ ~ ~ loot uhcp:consumables/portable_lava_pool
tellraw @s [{"text":"You've slain"},{"text":" Infernus","color":"gold"},{"text":"! You gained","color":"white"},{"text":" 5 Portable Lava Pools","color":"gold"},{"text":"!","color":"white"}]