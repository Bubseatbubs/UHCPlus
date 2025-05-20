execute if score @s uhcp_ready matches 2 run function uhcp:lobby/spectator/stop_spectate
scoreboard players set @s uhcp_leave 1000
scoreboard players set @s uhcp_ready 0
loot replace entity @s hotbar.8 loot uhcp:lobby_menu/not_ready
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Not Ready","color":"dark_gray"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
scoreboard players reset @s uhcp_leave
execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
