# Determine random time to start
execute if score daydice tick matches 1..8 run function uhcp:start/randomtime/1
execute if score daydice tick matches 9..16 run function uhcp:start/randomtime/2
execute if score daydice tick matches 17..25 run function uhcp:start/randomtime/3
