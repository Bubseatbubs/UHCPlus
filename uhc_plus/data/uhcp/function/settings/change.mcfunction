# Change settings
execute if score @s uhcp_settings matches 0..99 run function uhcp:settings/change/augments
execute if score @s uhcp_settings matches 100..199 run function uhcp:settings/change/border
execute if score @s uhcp_settings matches 200..299 run function uhcp:settings/change/lava
execute if score @s uhcp_settings matches 300..399 run function uhcp:settings/change/other
execute if score @s uhcp_settings matches 400..499 run function uhcp:settings/change/player
execute if score @s uhcp_settings matches 500..599 run function uhcp:settings/change/team
execute if score @s uhcp_settings matches 1000 run function uhcp:settings/reset/check

playsound minecraft:block.note_block.harp master @s ~ ~ ~ 10 1 1
scoreboard players reset @s uhcp_settings

# Record player as operator
tag @s add UHCP_Operator
