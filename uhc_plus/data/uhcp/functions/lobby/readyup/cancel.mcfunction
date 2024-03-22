tag @s add UHCP_DisableReset
execute if score @s uhcp_ready matches 2 run function uhcp:lobby/spectator/stop_spectate
scoreboard players set @s uhcp_ready 0
clear @s *[minecraft:custom_data~{uhcp_lobby:4b}]
loot replace entity @s hotbar.8 loot uhcp:lobby_menu/not_ready
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Not Ready","color":"dark_gray"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
tag @s remove UHCP_DisableReset
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1 1