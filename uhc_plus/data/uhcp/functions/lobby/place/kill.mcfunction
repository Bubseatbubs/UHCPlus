# Dispose of animate entities
execute as @e[type=!minecraft:player,type=!#uhcp:inanimate_mobs,distance=..64] run function uhcp:entity/instant_kill
execute as @e[type=minecraft:armor_stand,distance=..64] run function uhcp:entity/instant_kill
execute as @e[type=minecraft:block_display,distance=..64] run kill @s
execute as @e[type=minecraft:item_display,distance=..64] run kill @s
execute as @e[type=minecraft:marker,distance=..64] run kill @s
execute as @e[type=minecraft:text_display,distance=..64] run kill @s
