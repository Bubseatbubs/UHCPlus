scoreboard players set @s uhcp_leave 1000
scoreboard players set @s uhcp_ready 1
loot replace entity @s weapon.mainhand loot uhcp:lobby_menu/ready
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Ready","color":"green"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
scoreboard players reset @s uhcp_leave
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
