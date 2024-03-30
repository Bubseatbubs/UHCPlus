# Join dark purple team
team join dark_purple @s
scoreboard players set @s uhcp_team 7
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Purple","color":"dark_purple"},{"text":" Team!","color":"gray"}]
