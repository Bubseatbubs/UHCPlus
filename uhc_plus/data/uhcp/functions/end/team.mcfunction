# Team win
execute if score @s uhcp_team matches 1..7 run function uhcp:end/team/first_half
execute if score @s uhcp_team matches 8..14 run function uhcp:end/team/second_half
