#Set to progress of current dimension
execute if score OriginX WorldPregen = NetherOriginX WorldPregen if score OriginZ WorldPregen = NetherOriginZ WorldPregen run scoreboard players operation @s WorldPregen = Nether WorldPregen
# ------------ UHC Plus
execute in minecraft:the_nether run gamerule doMobSpawning true
# ------------
function pregen:start/teleport

#Store Origin
scoreboard players operation NetherOriginX WorldPregen = OriginX WorldPregen
scoreboard players operation NetherOriginZ WorldPregen = OriginZ WorldPregen
