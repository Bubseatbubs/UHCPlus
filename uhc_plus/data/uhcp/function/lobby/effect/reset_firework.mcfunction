# Reset effect initialization status
execute unless block ^14 ^17 ^18 minecraft:polished_blackstone_button[powered=true] run return run scoreboard players set %lobby_firework uhcp_initStatus 0
scoreboard players remove %lobby_firework uhcp_itemCount 1
execute if score %lobby_firework uhcp_itemCount matches ..0 run scoreboard players set %lobby_firework uhcp_initStatus 0
