# Determine shrink time
tellraw @a ["",{"text":"[Info]","color":"red"},{"text":" Shrink Activated! >> 500 <<","color":"yellow"}]
execute if score BorderShrinkTime setting matches 20 run function game:events/shrink/500/20
execute if score BorderShrinkTime setting matches 40 run function game:events/shrink/500/40
execute if score BorderShrinkTime setting matches 60 run function game:events/shrink/500/60
execute if score BorderShrinkTime setting matches 80 run function game:events/shrink/500/80
execute if score BorderShrinkTime setting matches 100 run function game:events/shrink/500/100
execute if score BorderShrinkTime setting matches 120 run function game:events/shrink/500/120
execute if score BorderShrinkTime setting matches 140 run function game:events/shrink/500/140
execute if score BorderShrinkTime setting matches 160 run function game:events/shrink/500/160
execute if score BorderShrinkTime setting matches 180 run function game:events/shrink/500/180
execute if score BorderShrinkTime setting matches 200 run function game:events/shrink/500/200
execute if score BorderShrinkTime setting matches 220 run function game:events/shrink/500/220
execute if score BorderShrinkTime setting matches 240 run function game:events/shrink/500/240
