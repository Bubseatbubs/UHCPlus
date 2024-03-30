# Join dark blue team
team join dark_blue @s
scoreboard players set @s uhcp_team 4
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Blue","color":"dark_blue"},{"text":" Team!","color":"gray"}]
