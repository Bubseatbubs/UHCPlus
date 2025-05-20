scoreboard players add @s uhcp_timer 1
execute on passengers at @s run rotate @s ~30 0
execute if score @s uhcp_timer matches 90 run return run function uhcp:relics/web_o_rang/end
execute if score @s uhcp_timer matches 45.. run return run function uhcp:relics/web_o_rang/return

tp @s ^ ^ ^1
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run return run function uhcp:relics/web_o_rang/block
execute unless score @s uhcp_timer matches 1 run function uhcp:relics/web_o_rang/cobweb
