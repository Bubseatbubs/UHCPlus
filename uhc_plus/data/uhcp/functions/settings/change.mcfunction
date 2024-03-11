# Change settings

execute if score @s uhcp_settings matches 0..99 run function uhcp:settings/change/augments
execute if score @s uhcp_settings matches 200..299 run function uhcp:settings/change/lava
execute if score @s uhcp_settings matches 300..399 run function uhcp:settings/change/other
execute if score @s uhcp_settings matches 400..499 run function uhcp:settings/change/player


playsound block.note_block.harp master @s ~ ~ ~ 10 1 1
scoreboard players reset @s uhcp_settings

# Old Settings
# execute if score @s uhcp_settings matches 600..1007 unless score @s uhcp_settings matches 800..801 unless score @s uhcp_settings matches 600..607 run function uhcp:settings/pages/2
# execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 600..699 run function uhcp:settings/dimensions
# execute if score @s uhcp_settings matches 800..899 run function uhcp:settings/lava
# execute if score @s uhcp_settings matches 500..503 run function uhcp:settings/augmenttier
# execute if score @s uhcp_settings matches 600..607 run function uhcp:settings/menu/dimensions
# execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 800 if score %uhcp_lavaInit uhcp_initStatus matches 1.. run tellraw @s [{"text":"Lava","color":"red"},{"text":" is rising!","color":"yellow"}]
# execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 801 run tellraw @s [{"text":"Lava","color":"red"},{"text":" stopped rising.","color":"yellow"}]
