# Join dark gray team
team join dark_gray @s
scoreboard players set @s uhcp_team 5
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Gray","color":"dark_gray"},{"text":" Team!","color":"gray"}]
