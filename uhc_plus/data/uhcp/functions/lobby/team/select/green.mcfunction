# Join green team
team join green @s
scoreboard players set @s uhcp_team 11
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Green","color":"green"},{"text":" Team!","color":"gray"}]
