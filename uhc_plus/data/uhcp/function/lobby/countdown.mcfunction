
scoreboard players remove %start_countdown uhcp_initStatus 1

# Countdown noise
execute if score %start_countdown uhcp_initStatus matches 60 run title @a subtitle ""
execute if score %start_countdown uhcp_initStatus matches 60 run title @a title {"text":"3","color":"#FF9100","bold":true}
execute if score %start_countdown uhcp_initStatus matches 60 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1.35 1
execute if score %start_countdown uhcp_initStatus matches 60 as @a at @s run playsound minecraft:event.mob_effect.bad_omen master @s ~ ~ ~ 1 1.5 1
execute if score %start_countdown uhcp_initStatus matches 40 run title @a title {"text":"2","color":"#FF9100","bold":true}
execute if score %start_countdown uhcp_initStatus matches 40 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1.35 1
execute if score %start_countdown uhcp_initStatus matches 40 as @a at @s run playsound minecraft:event.mob_effect.bad_omen master @s ~ ~ ~ 1 1.5 1
execute if score %start_countdown uhcp_initStatus matches 20 run title @a title {"text":"1","color":"#FF9100","bold":true}
execute if score %start_countdown uhcp_initStatus matches 20 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1.35 1
execute if score %start_countdown uhcp_initStatus matches 20 as @a at @s run playsound minecraft:event.mob_effect.bad_omen master @s ~ ~ ~ 1 1.5 1

execute if score %start_countdown uhcp_initStatus matches ..0 run function uhcp:start
