# Determine shrink time
tellraw @a ["",{"text":"[Info]","color":"red"},{"text":" Shrink Activated! >> 50 <<","color":"yellow"}]
execute if score BorderShrinkTime setting matches 20 run function game:events/shrink/50/20
execute if score BorderShrinkTime setting matches 40 run function game:events/shrink/50/40
execute if score BorderShrinkTime setting matches 60 run function game:events/shrink/50/60
execute if score BorderShrinkTime setting matches 80 run function game:events/shrink/50/80
execute if score BorderShrinkTime setting matches 100 run function game:events/shrink/50/100
execute if score BorderShrinkTime setting matches 120 run function game:events/shrink/50/120
execute if score BorderShrinkTime setting matches 140 run function game:events/shrink/50/140
execute if score BorderShrinkTime setting matches 160 run function game:events/shrink/50/160
execute if score BorderShrinkTime setting matches 180 run function game:events/shrink/50/180
execute if score BorderShrinkTime setting matches 200 run function game:events/shrink/50/200
execute if score BorderShrinkTime setting matches 220 run function game:events/shrink/50/220
execute if score BorderShrinkTime setting matches 240 run function game:events/shrink/50/240
