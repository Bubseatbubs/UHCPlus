#Set to progress of current dimension
execute if score OriginX WorldPregen = EndOriginX WorldPregen if score OriginZ WorldPregen = EndOriginZ WorldPregen run scoreboard players operation @s WorldPregen = End WorldPregen
# ------------ UHC Plus
execute in minecraft:the_end run gamerule doMobSpawning true
# ------------
function pregen:start/teleport

#Store Origin
scoreboard players operation EndOriginX WorldPregen = OriginX WorldPregen
scoreboard players operation EndOriginZ WorldPregen = OriginZ WorldPregen
