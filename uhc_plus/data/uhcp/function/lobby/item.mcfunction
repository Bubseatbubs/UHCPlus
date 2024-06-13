# Change player's "active" item based on the button they pressed
execute if score @s uhcp_lobby_setItem = @s uhcp_lobby_item run return run scoreboard players reset @s uhcp_lobby_setItem
scoreboard players operation @s uhcp_lobby_item = @s uhcp_lobby_setItem
scoreboard players reset @s uhcp_lobby_setItem

function uhcp:lobby/menu