# Join red team
team join red @s
scoreboard players set @s uhcp_team 13
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Red","color":"red"},{"text":" Team!","color":"gray"}]
