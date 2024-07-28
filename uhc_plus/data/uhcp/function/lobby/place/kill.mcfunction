# Dispose of entities
execute as @e[type=!minecraft:player,type=!#uhcp:inanimate_mobs,distance=..64] run function uhcp:entity/instant_kill
tag @e[type=minecraft:armor_stand,distance=..64] add UHCP_LobbyPlace
tag @e[type=minecraft:falling_block,distance=..64] add UHCP_LobbyPlace
tp @e[tag=UHCP_LobbyPlace] 0 -4096 0
kill @e[tag=UHCP_LobbyPlace]
kill @e[type=#uhcp:intangible,distance=..64]
