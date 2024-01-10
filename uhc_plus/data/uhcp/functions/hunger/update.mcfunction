execute unless score %h_max uhcp_settings matches -100 unless score @s uhcp_hungerTimer > %h_max uhcp_settings run scoreboard players add @s uhcp_hungerTimer 1

# Effect Hunger
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 0 run effect give @s hunger 5 0 true
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 1 run effect give @s hunger 5 1 true
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 2 run effect give @s hunger 5 2 true
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 3 run effect give @s hunger 5 3 true
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 4 run effect give @s hunger 5 4 true
execute if score @s uhcp_hungerTimer >= %h_max uhcp_settings if score %h_amp uhcp_settings matches 255 run effect give @s hunger 5 255 true

execute if score @s uhcp_hungerTimer = %h_max uhcp_settings run tellraw @s [{"text":"Hunger","color":"green"},{"text":" was inflicted... fight other players to remove it!","color":"gray"}]
execute if score @s uhcp_hungerTimer = %h_max uhcp_settings run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1 1