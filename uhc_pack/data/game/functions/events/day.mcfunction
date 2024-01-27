tellraw @a ["",{"text":"[Info]","color":"gold"},{"text":" Eternal Day!","color":"yellow"}]
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1000000 0 1
execute in minecraft:overworld run time set 6000
# I suspect this does not work. -Aidan
execute in minecraft:overworld run gamerule doDaylightCycle false
