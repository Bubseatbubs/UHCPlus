# Join dark green team
team join dark_green @s
scoreboard players set @s uhcp_team 6
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Green","color":"dark_green"},{"text":" Team!","color":"gray"}]
