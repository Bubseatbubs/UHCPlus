# Join yellow team
team join yellow @s
scoreboard players set @s uhcp_team 14
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Yellow","color":"yellow"},{"text":" Team!","color":"gray"}]
