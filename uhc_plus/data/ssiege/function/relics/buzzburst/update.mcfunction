scoreboard players add @s uhcp_timer 1
execute on passengers at @s run rotate @s ~25 0
execute as @s[nbt={inGround:1b}] run function uhcp:relics/buzzburst/explode
execute if score @s uhcp_timer matches 2.. if entity @e[distance=..2,predicate=uhcp:targetable] run function uhcp:relics/buzzburst/explode
execute if score @s uhcp_timer matches 100.. run function uhcp:relics/buzzburst/explode
