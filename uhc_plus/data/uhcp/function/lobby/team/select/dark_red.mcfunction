# Join dark red team
team join dark_red @s
scoreboard players set @s uhcp_team 8
tellraw @a [{"selector":"@s"},{"text":" has joined the","color":"gray"},{"text":" Dark Red","color":"dark_red"},{"text":" Team!","color":"gray"}]
