# Infernus loot
loot insert ~ ~ ~ loot uhcp:titans/infernus
execute if entity @a[gamemode=survival,distance=..12] run tellraw @a [{"text":"Infernus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
