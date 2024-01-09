execute unless score @s uhcp_hungerTimer > %uhcp_max uhcp_hungerTimer run scoreboard players add @s uhcp_hungerTimer 1

# Effect Hunger
execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer if score %uhcp_amp uhcp_hungerTimer matches 1 run effect give @s hunger 5 1 true
execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer if score %uhcp_amp uhcp_hungerTimer matches 2 run effect give @s hunger 5 2 true
execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer if score %uhcp_amp uhcp_hungerTimer matches 3 run effect give @s hunger 5 3 true
execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer if score %uhcp_amp uhcp_hungerTimer matches 4 run effect give @s hunger 5 4 true
execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer if score %uhcp_amp uhcp_hungerTimer matches 5 run effect give @s hunger 5 5 true

execute if score @s uhcp_hungerTimer = %uhcp_max uhcp_hungerTimer run tellraw @s [{"text":"Hunger","color":"green"},{"text":" was inflicted... fight other players to remove it!","color":"gray"}]
execute if score @s uhcp_hungerTimer = %uhcp_max uhcp_hungerTimer run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1 1