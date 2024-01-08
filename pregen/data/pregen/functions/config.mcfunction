#Config

#Make sure settings have valid values
scoreboard players add OriginX WorldPregen 0
scoreboard players add OriginZ WorldPregen 0
execute unless score Radius WorldPregen matches 0.. run scoreboard players set Radius WorldPregen 5000
execute unless score Dimension WorldPregen matches -1..1 run scoreboard players set Dimension WorldPregen 0
execute unless score Overworld WorldPregen matches 0.. run scoreboard players set Overworld WorldPregen 0
execute unless score Nether WorldPregen matches 0.. run scoreboard players set Nether WorldPregen 0
execute unless score End WorldPregen matches 0.. run scoreboard players set End WorldPregen 0

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
