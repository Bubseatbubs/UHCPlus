# Team win
execute if score @s uhcp_team matches 1..7 run function uhcp:end/team/first_half
execute if score @s uhcp_team matches 8..14 run function uhcp:end/team/second_half
title @a times 1s 4s 2s
title @a title [{"text":"ꕥ ","color":"white","bold":false},{"text":"VI","color":"#F3E536","bold":true},{"text":"CT","color":"#F3D264","bold":true},{"text":"OR","color":"#F3D5A0","bold":true},{"text":"Y","color":"#F3E2D6","bold":true},{"text":" ꕥ","color":"white","bold":false}]
