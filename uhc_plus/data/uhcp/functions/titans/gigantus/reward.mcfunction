advancement revoke @s only uhcp:titans/killed_gigantus

tellraw @a [{"text":"Gigantus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
loot give @s loot uhcp:consumables/suspicious_flesh
tellraw @s [{"text":"You've slain"},{"text":" Gigantus","color":"gold"},{"text":"! You gained 8","color":"white"},{"text":" Suspicious Flesh","color":"gold"},{"text":"!","color":"white"}]