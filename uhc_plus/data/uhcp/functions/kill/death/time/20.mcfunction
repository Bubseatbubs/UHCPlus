# Give player night vision
tag @s add UHCP_RespawnCheck
execute if predicate uhcp:dimensions/minecraft/overworld in minecraft:overworld positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute if predicate uhcp:dimensions/minecraft/the_end in minecraft:the_end positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute if predicate uhcp:dimensions/minecraft/the_nether in minecraft:the_nether positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
tag @s remove UHCP_RespawnCheck

execute unless score %game uhcp_initStatus matches 1 as @s[tag=!UHCP_Died] run function uhcp:kill/death/lobby
execute if score %game uhcp_initStatus matches 1 as @s[tag=!UHCP_Died] run effect give @s minecraft:night_vision infinite 0 true

# Death message
title @s subtitle {"text":"You are now Spectating the match.","color":"gray","bold":true}
title @s title {"text":"YOU DIED","color":"dark_red","bold":true}
