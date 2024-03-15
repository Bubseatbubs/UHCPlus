execute if entity @s[gamemode=!creative] run loot give @s loot uhcp:augments/gloryofra/ras_gaze
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"Ra's Gaze currently cannot be used.","color":"dark_red"}]