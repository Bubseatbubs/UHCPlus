# Determine shrink time
tellraw @a ["",{"text":"[Info]","color":"red"},{"text":" Shrink Activated! >> 750 <<","color":"yellow"}]
execute if score BorderShrinkTime setting matches 20 run function game:events/shrink/750/20
execute if score BorderShrinkTime setting matches 40 run function game:events/shrink/750/40
execute if score BorderShrinkTime setting matches 60 run function game:events/shrink/750/60
execute if score BorderShrinkTime setting matches 80 run function game:events/shrink/750/80
execute if score BorderShrinkTime setting matches 100 run function game:events/shrink/750/100
execute if score BorderShrinkTime setting matches 120 run function game:events/shrink/750/120
execute if score BorderShrinkTime setting matches 140 run function game:events/shrink/750/140
execute if score BorderShrinkTime setting matches 160 run function game:events/shrink/750/160
execute if score BorderShrinkTime setting matches 180 run function game:events/shrink/750/180
execute if score BorderShrinkTime setting matches 200 run function game:events/shrink/750/200
execute if score BorderShrinkTime setting matches 220 run function game:events/shrink/750/220
execute if score BorderShrinkTime setting matches 240 run function game:events/shrink/750/240
