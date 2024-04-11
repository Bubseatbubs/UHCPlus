scoreboard players add @s uhcp_lobby_item 1
execute if score @s uhcp_lobby_item matches 19.. run scoreboard players set @s uhcp_lobby_item 10
playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

function uhcp:lobby/menu