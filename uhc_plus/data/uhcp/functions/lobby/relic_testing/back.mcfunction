scoreboard players remove @s uhcp_lobby_item 1
execute if score @s uhcp_lobby_item matches ..9 run scoreboard players set @s uhcp_lobby_item 18
playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

function uhcp:lobby/menu