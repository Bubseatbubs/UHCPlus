execute if score %titans uhcp_initStatus matches ..0 run return 0

execute if score %titans uhcp_initStatus = %titans uhcp_settings run function uhcp:titans/spawn/prepare
execute positioned 0 64 0 summon minecraft:marker run function uhcp:titans/spawn/marker/init
scoreboard players remove %titans uhcp_initStatus 1
execute unless score %titans uhcp_initStatus matches ..0 run schedule function uhcp:titans/spawn/init 1t append

scoreboard players set %titans uhcp_game_time 24000
