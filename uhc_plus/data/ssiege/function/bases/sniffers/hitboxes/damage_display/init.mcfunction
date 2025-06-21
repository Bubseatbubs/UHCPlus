scoreboard players operation %left uhcp_initStatus = %damage uhcp_initStatus
scoreboard players operation %left uhcp_initStatus /= #100 uhcp_const

scoreboard players operation %right uhcp_initStatus = %damage uhcp_initStatus
scoreboard players operation %right uhcp_initStatus %= #100 uhcp_const

scoreboard players operation %round uhcp_initStatus = %damage uhcp_initStatus
scoreboard players operation %round uhcp_initStatus %= #10 uhcp_const

scoreboard players operation %right uhcp_initStatus /= #10 uhcp_const
execute if score %round uhcp_initStatus matches 5..9 run scoreboard players add %right uhcp_initStatus 1
execute if score %round uhcp_initStatus matches 5..9 if score %right uhcp_initStatus matches 10 run scoreboard players add %left uhcp_initStatus 1
execute if score %round uhcp_initStatus matches 5..9 if score %right uhcp_initStatus matches 10 run scoreboard players set %right uhcp_initStatus 0

execute if score %damage uhcp_initStatus matches 0 run execute positioned ~ ~1 ~ run summon text_display ^ ^ ^2 {billboard:"center",teleport_duration:20,default_background:0b,see_through:1b,Tags:["SSIEGE_damage_display","SSIEGE_new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]},text:{"bold":false,"color":"dark_gray","text":"Too weak!"},background:16711680}

execute if score %damage uhcp_initStatus matches 1.. if score %crit uhcp_initStatus matches 0 run execute positioned ~ ~1 ~ run summon text_display ^ ^ ^2 {billboard:"center",teleport_duration:20,default_background:0b,see_through:1b,Tags:["SSIEGE_damage_display","SSIEGE_new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]},text:[{"bold":false,"color":"white","score":{"name":"%left","objective":"uhcp_initStatus"}},".",{"bold":false,"color":"white","score":{"name":"%right","objective":"uhcp_initStatus"}}],background:16711680}

execute if score %damage uhcp_initStatus matches 1.. if score %crit uhcp_initStatus matches 1 run summon text_display ^ ^ ^2 {billboard:"center",teleport_duration:20,default_background:0b,see_through:1b,Tags:["SSIEGE_damage_display","SSIEGE_new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]},text:[{"bold":true,"color":"white","score":{"name":"%left","objective":"uhcp_initStatus"}},".",{"bold":true,"color":"white","score":{"name":"%right","objective":"uhcp_initStatus"}}],background:16711680}

execute as @e[tag=SSIEGE_new] run scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
execute as @e[tag=SSIEGE_new] run scoreboard players add @s uhcp_game_time 15

tag @e[tag=SSIEGE_new] remove SSIEGE_new