scoreboard players set @s uhcp_leave 1000
scoreboard players set @s uhcp_ready 2
team leave @s
loot replace entity @s container.8 loot uhcp:lobby_menu/ready
loot replace entity @s container.7 loot uhcp:lobby_menu/stop_spectate
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" spectating","color":"dark_gray"},{"text":" the game.","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
scoreboard players reset @s uhcp_leave
execute as @a at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1 1
