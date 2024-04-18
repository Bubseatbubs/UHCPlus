advancement revoke @s only uhcp:titans/killed_ferrum
tellraw @a [{"text":"Ferrum","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
effect give @s absorption infinite 4 true
tellraw @s [{"text":"You've slain"},{"text":" Ferrum","color":"gold"},{"text":"! You gained","color":"white"},{"text":" 10🖤","color":"yellow"},{"text":"!","color":"white"}]