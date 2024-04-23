advancement revoke @s only uhcp:titans/killed_gigacreeper

tellraw @a [{"text":"Giga Creeper","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
give @s tnt 32
tag @s add UHCP_Explode
tellraw @s [{"text":"You've slain"},{"text":" Giga Creeper","color":"gold"},{"text":"! You gained 32","color":"white"},{"text":" TNT","color":"gold"},{"text":" and","color":"white"},{"text":" explode on death","color":"light_purple"},{"text":"!","color":"white"}]