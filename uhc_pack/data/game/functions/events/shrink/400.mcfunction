# Determine shrink time
tellraw @a ["",{"text":"[Info]","color":"red"},{"text":" Shrink Activated! >> 400 <<","color":"yellow"}]
execute if score BorderShrinkTime setting matches 20 run function game:events/shrink/400/20
execute if score BorderShrinkTime setting matches 40 run function game:events/shrink/400/40
execute if score BorderShrinkTime setting matches 60 run function game:events/shrink/400/60
execute if score BorderShrinkTime setting matches 80 run function game:events/shrink/400/80
execute if score BorderShrinkTime setting matches 100 run function game:events/shrink/400/100
execute if score BorderShrinkTime setting matches 120 run function game:events/shrink/400/120
execute if score BorderShrinkTime setting matches 140 run function game:events/shrink/400/140
execute if score BorderShrinkTime setting matches 160 run function game:events/shrink/400/160
execute if score BorderShrinkTime setting matches 180 run function game:events/shrink/400/180
execute if score BorderShrinkTime setting matches 200 run function game:events/shrink/400/200
execute if score BorderShrinkTime setting matches 220 run function game:events/shrink/400/220
execute if score BorderShrinkTime setting matches 240 run function game:events/shrink/400/240
