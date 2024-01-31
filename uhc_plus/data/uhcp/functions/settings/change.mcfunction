# Change settings
execute unless score @s uhcp_settings matches 800..801 unless score @s uhcp_settings matches 400..407 run function uhcp:settings/menu

execute if score @s uhcp_settings matches 0..9 run function uhcp:settings/golden_apple
execute if score @s uhcp_settings matches 100..399 run function uhcp:settings/hunger
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 400..499 run function uhcp:settings/dimensions
execute if score @s uhcp_settings matches 800..899 run function uhcp:settings/lava

execute if score @s uhcp_settings matches 400..407 run function uhcp:settings/menu/dimensions
execute if score @s uhcp_settings matches 500..503 run function uhcp:settings/augmenttier
execute if score @s uhcp_settings matches 800..801 run function uhcp:settings/menu
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 800 if score %uhcp_lavaInit uhcp_initStatus matches 1.. run tellraw @s [{"text":"Lava","color":"red"},{"text":" is rising!","color":"yellow"}]
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 801 run tellraw @s [{"text":"Lava","color":"red"},{"text":" stopped rising.","color":"yellow"}]

execute unless score @s uhcp_settings matches 800..801 run playsound block.note_block.harp master @s ~ ~ ~ 10 1 1
scoreboard players reset @s uhcp_settings
