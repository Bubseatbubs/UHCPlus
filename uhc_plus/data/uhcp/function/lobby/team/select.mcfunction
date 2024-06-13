function uhcp:lobby/team/menu

execute unless score @s team matches 114 if score @s uhcp_ready matches 2 run function uhcp:lobby/spectator/stop_spectate
execute if score @s uhcp_ready matches 1 run function uhcp:lobby/readyup/cancel

execute if score @s team matches 100 run function uhcp:lobby/team/select/aqua
execute if score @s team matches 101 run function uhcp:lobby/team/select/dark_aqua
execute if score @s team matches 102 run function uhcp:lobby/team/select/blue
execute if score @s team matches 103 run function uhcp:lobby/team/select/dark_blue
execute if score @s team matches 104 run function uhcp:lobby/team/select/gold
execute if score @s team matches 105 run function uhcp:lobby/team/select/gray
execute if score @s team matches 106 run function uhcp:lobby/team/select/dark_gray
execute if score @s team matches 107 run function uhcp:lobby/team/select/green
execute if score @s team matches 108 run function uhcp:lobby/team/select/dark_green
execute if score @s team matches 109 run function uhcp:lobby/team/select/light_purple
execute if score @s team matches 110 run function uhcp:lobby/team/select/dark_purple
execute if score @s team matches 111 run function uhcp:lobby/team/select/red
execute if score @s team matches 112 run function uhcp:lobby/team/select/dark_red
execute if score @s team matches 113 run function uhcp:lobby/team/select/yellow
execute if score @s team matches 114 run function uhcp:lobby/team/select/leave

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
scoreboard players reset @s team
