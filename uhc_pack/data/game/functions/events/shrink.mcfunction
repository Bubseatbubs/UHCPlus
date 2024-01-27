# Determine final size
execute if score FinalArenaSize setting matches 3 run function game:events/shrink/3
execute if score FinalArenaSize setting matches 20 run function game:events/shrink/20
execute if score FinalArenaSize setting matches 50 run function game:events/shrink/50
execute if score FinalArenaSize setting matches 100 run function game:events/shrink/100
execute if score FinalArenaSize setting matches 200 run function game:events/shrink/200
execute if score FinalArenaSize setting matches 300 run function game:events/shrink/300
execute if score FinalArenaSize setting matches 400 run function game:events/shrink/400
execute if score FinalArenaSize setting matches 500 run function game:events/shrink/500
execute if score FinalArenaSize setting matches 750 run function game:events/shrink/750
execute if score FinalArenaSize setting matches 1000 run function game:events/shrink/1000

playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1000000 0 1
