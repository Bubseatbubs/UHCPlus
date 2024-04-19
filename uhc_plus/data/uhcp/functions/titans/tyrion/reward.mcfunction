advancement revoke @s only uhcp:titans/killed_tyrion

tellraw @a [{"text":"Tyrion","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot give @s loot uhcp:consumables/relic_invoker
loot give @s loot uhcp:consumables/relic_invoker
tellraw @s [{"text":"You've slain"},{"text":" Tyrion","color":"gold"},{"text":"! You gained","color":"white"},{"text":" 2 Relic Invokers","color":"gold"},{"text":"!","color":"white"}]