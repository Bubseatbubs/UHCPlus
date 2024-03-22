function uhcp:lobby/team/menu

execute unless score @s team matches 114 if score @s uhcp_ready matches 2 run function uhcp:lobby/spectator/stop_spectate
execute if score @s uhcp_ready matches 1 run function uhcp:lobby/readyup/cancel

execute if score @s team matches 100 run team join aqua
execute if score @s team matches 100 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Aqua","color":"aqua"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 101 run team join dark_aqua
execute if score @s team matches 101 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Aqua","color":"dark_aqua"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 102 run team join blue
execute if score @s team matches 102 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Blue","color":"blue"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 103 run team join dark_blue
execute if score @s team matches 103 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Blue","color":"dark_blue"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 104 run team join gold
execute if score @s team matches 104 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Gold","color":"gold"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 105 run team join gray
execute if score @s team matches 105 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Gray","color":"gray"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 106 run team join dark_gray
execute if score @s team matches 106 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Gray","color":"dark_gray"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 107 run team join green
execute if score @s team matches 107 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Green","color":"green"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 108 run team join dark_green
execute if score @s team matches 108 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Green","color":"dark_green"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 109 run team join light_purple
execute if score @s team matches 109 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Pink","color":"light_purple"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 110 run team join dark_purple
execute if score @s team matches 110 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Purple","color":"dark_purple"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 111 run team join red
execute if score @s team matches 111 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Red","color":"red"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 112 run team join dark_red
execute if score @s team matches 112 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Red","color":"dark_red"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 113 run team join yellow
execute if score @s team matches 113 run tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Yellow","color":"yellow"},{"text":" Team!","color":"gray"}]
execute if score @s team matches 114 run team leave @s
execute if score @s team matches 114 run tellraw @a [{"selector":"@s"},{"text":" left their team."}]

scoreboard players set @s[team=aqua] uhcp_team 1
scoreboard players set @s[team=blue] uhcp_team 2
scoreboard players set @s[team=dark_aqua] uhcp_team 3
scoreboard players set @s[team=dark_blue] uhcp_team 4
scoreboard players set @s[team=dark_gray] uhcp_team 5
scoreboard players set @s[team=dark_green] uhcp_team 6
scoreboard players set @s[team=dark_purple] uhcp_team 7
scoreboard players set @s[team=dark_red] uhcp_team 8
scoreboard players set @s[team=gold] uhcp_team 9
scoreboard players set @s[team=gray] uhcp_team 10
scoreboard players set @s[team=green] uhcp_team 11
scoreboard players set @s[team=light_purple] uhcp_team 12
scoreboard players set @s[team=red] uhcp_team 13
scoreboard players set @s[team=yellow] uhcp_team 14

execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
scoreboard players reset @s team