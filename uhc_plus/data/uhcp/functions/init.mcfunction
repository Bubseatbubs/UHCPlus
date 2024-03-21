# Set initialize scoreboard
scoreboard players set %uhcp_init uhcp_initStatus 1

# Lobby
# Should eventually place a structure instead (Thank you, Rain!)
forceload add 0 0
fill 0 300 0 14 311 14 minecraft:barrier
fill 1 301 1 13 310 13 minecraft:air
summon minecraft:text_display 7 303 7 {Tags:["UHCP_Lobby"],alignment:"center",billboard:"center",text:'[{"text":"U","color":"#0346FF"},{"text":"H","color":"#0080FF"},{"text":"C ","color":"#0091FF"},{"text":"+","color":"#05CDFF","bold":true}]'}
forceload remove 0 0
