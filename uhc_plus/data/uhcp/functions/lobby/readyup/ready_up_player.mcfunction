tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_ready 1
loot replace entity @s weapon.mainhand loot uhcp:lobby_menu/ready
function uhcp:lobby/readyup/check
tellraw @a [{"selector":"@s"},{"text":" is now","color":"gray"},{"text":" Ready","color":"green"},{"text":".","color":"gray"},{"text":" [","color":"white"},{"score":{"name":"%ready","objective":"uhcp_ready"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"%total","objective":"uhcp_ready"},"color":"aqua"},{"text":"]","color":"white"}]
tag @s remove UHCP_DisableReset
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1