# Unready ready players (not spectators)
scoreboard players reset %start_countdown uhcp_initStatus
tag @a[scores={uhcp_ready=1}] add UHCP_Unready
scoreboard players set @a[tag=UHCP_Unready] uhcp_leave 1000
scoreboard players set @a[tag=UHCP_Unready] uhcp_ready 0

loot replace entity @a[tag=UHCP_Unready] hotbar.8 loot uhcp:lobby_menu/not_ready
execute as @a[tag=UHCP_Unready] run tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" not ready","color":"dark_gray"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
scoreboard players reset @a uhcp_leave
tag @a remove UHCP_Unready

execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
