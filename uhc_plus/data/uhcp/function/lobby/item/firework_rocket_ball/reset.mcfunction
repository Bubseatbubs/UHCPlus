# Reset item initialization status
execute unless block ^28 ^25 ^31 minecraft:mangrove_button[powered=true] run return run scoreboard players set %lobby_item_4 uhcp_initStatus 0
scoreboard players remove %lobby_item_4 uhcp_itemCount 1
execute if score %lobby_item_4 uhcp_itemCount matches ..0 run scoreboard players set %lobby_item_4 uhcp_initStatus 0
