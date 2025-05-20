# Unready ready players (not spectators)
scoreboard players reset %start_countdown uhcp_initStatus
tag @a[scores={uhcp_ready=1}] add UHCP_DisableReset
scoreboard players set @a[tag=UHCP_DisableReset] uhcp_ready 0

loot replace entity @a[tag=UHCP_DisableReset] hotbar.8 loot uhcp:lobby_menu/not_ready
execute as @a[tag=UHCP_DisableReset] run tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Not Ready","color":"dark_gray"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
tag @a[tag=UHCP_DisableReset] remove UHCP_DisableReset

execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
