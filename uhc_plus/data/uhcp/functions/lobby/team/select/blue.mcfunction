# Join blue team
team join blue @s
scoreboard players set @s uhcp_team 2
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Blue","color":"blue"},{"text":" Team!","color":"gray"}]
