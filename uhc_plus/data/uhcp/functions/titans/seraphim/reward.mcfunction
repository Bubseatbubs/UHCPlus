advancement revoke @s only uhcp:titans/killed_gigantus

tellraw @a [{"text":"Fenrir","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
# Insert Fenrir reward here
tellraw @s [{"text":"You've slain"},{"text":" Fenrir","color":"gold"},{"text":"! You gained a","color":"white"},{"text":" Web-o-Rang","color":"gold"},{"text":"!","color":"white"}]