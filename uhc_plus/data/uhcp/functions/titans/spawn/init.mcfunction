execute if score %titans uhcp_initStatus matches ..0 run return 0
execute positioned 0 64 0 summon minecraft:marker run function uhcp:titans/spawn/marker
execute if score %titans uhcp_initStatus matches 1 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.5 1
scoreboard players remove %titans uhcp_initStatus 1
schedule function uhcp:titans/spawn/init 1s append
