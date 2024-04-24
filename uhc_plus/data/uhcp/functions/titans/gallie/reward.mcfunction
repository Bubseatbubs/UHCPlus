advancement revoke @s only uhcp:titans/killed_gallie

tellraw @a [{"text":"Gallie","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
loot spawn ~ ~ ~ loot uhcp:titans/bellans_crossbow
give @s arrow 12
tellraw @s [{"text":"You've slain"},{"text":" Gallie","color":"gold"},{"text":"! You gained","color":"white"},{"text":" Bellan's Crossbow","color":"gold"},{"text":" and ","color":"white"},{"text":"12 Arrows","color":"yellow"},{"text":"!","color":"white"}]