advancement revoke @s only uhcp:titans/killed_seraphim

tellraw @a [{"text":"Seraphim","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot give @s loot uhcp:armaments/kalyxs_thorns
effect give @s regeneration 5 2 true
tellraw @s [{"text":"You've slain"},{"text":" Seraphim","color":"gold"},{"text":"! You gained a","color":"white"},{"text":" Kalyx's Thorns","color":"gold"},{"text":" and 5 seconds of ","color":"white"},{"text":"Regeneration","color":"yellow"},{"text":"!","color":"white"}]