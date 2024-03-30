# Join light purple team
team join light_purple @s
scoreboard players set @s uhcp_team 12
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Light Purple","color":"light_purple"},{"text":" Team!","color":"gray"}]
