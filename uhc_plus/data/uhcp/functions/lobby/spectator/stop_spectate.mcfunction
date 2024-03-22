tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_ready 0
clear @s *[minecraft:custom_data~{uhcp_lobby:6b}]
loot replace entity @s container.8 loot uhcp:lobby_menu/not_ready
loot replace entity @s container.7 loot uhcp:lobby_menu/spectate
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Playing","color":"gold"},{"text":" within the game.","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
tag @s remove UHCP_DisableReset
execute as @a at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1 1