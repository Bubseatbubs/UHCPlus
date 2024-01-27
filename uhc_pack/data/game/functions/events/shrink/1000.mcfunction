# Determine shrink time
tellraw @a ["",{"text":"[Info]","color":"red"},{"text":" Shrink Activated! >> 1000 <<","color":"yellow"}]
execute if score BorderShrinkTime setting matches 20 run function game:events/shrink/1000/20
execute if score BorderShrinkTime setting matches 40 run function game:events/shrink/1000/40
execute if score BorderShrinkTime setting matches 60 run function game:events/shrink/1000/60
execute if score BorderShrinkTime setting matches 80 run function game:events/shrink/1000/80
execute if score BorderShrinkTime setting matches 100 run function game:events/shrink/1000/100
execute if score BorderShrinkTime setting matches 120 run function game:events/shrink/1000/120
execute if score BorderShrinkTime setting matches 140 run function game:events/shrink/1000/140
execute if score BorderShrinkTime setting matches 160 run function game:events/shrink/1000/160
execute if score BorderShrinkTime setting matches 180 run function game:events/shrink/1000/180
execute if score BorderShrinkTime setting matches 200 run function game:events/shrink/1000/200
execute if score BorderShrinkTime setting matches 220 run function game:events/shrink/1000/220
execute if score BorderShrinkTime setting matches 240 run function game:events/shrink/1000/240
