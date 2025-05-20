# Fenrir loot
loot insert ~ ~ ~ loot uhcp:titans/fenrir
execute if entity @a[gamemode=survival,distance=..12] run tellraw @a [{"text":"Fenrir","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
