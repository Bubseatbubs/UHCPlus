# Join gray team
team join gray @s
scoreboard players set @s uhcp_team 10
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Gray","color":"gray"},{"text":" Team!","color":"gray"}]
