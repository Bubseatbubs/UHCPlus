function uhcp:settings/patron/menu
playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

execute if score @s patron matches 100 run scoreboard players set @s uhcp_a_patron 0
execute if score @s patron matches 100 run tellraw @s [{"text":"Aphrodite","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 101 run scoreboard players set @s uhcp_a_patron 1
execute if score @s patron matches 101 run tellraw @s [{"text":"Apollo","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 102 run scoreboard players set @s uhcp_a_patron 2
execute if score @s patron matches 102 run tellraw @s [{"text":"Artemis","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 103 run scoreboard players set @s uhcp_a_patron 3
execute if score @s patron matches 103 run tellraw @s [{"text":"Athena","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 104 run scoreboard players set @s uhcp_a_patron 4
execute if score @s patron matches 104 run tellraw @s [{"text":"Demeter","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 105 run scoreboard players set @s uhcp_a_patron 5
execute if score @s patron matches 105 run tellraw @s [{"text":"Hephaestus","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 106 run scoreboard players set @s uhcp_a_patron 6
execute if score @s patron matches 106 run tellraw @s [{"text":"Hermes","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 107 run scoreboard players set @s uhcp_a_patron 7
execute if score @s patron matches 107 run tellraw @s [{"text":"Loki","color":"gold"},{"text":" became your Patron!","color":"gray"}]

execute if score @s patron matches 108 run scoreboard players set @s uhcp_a_patron 8
execute if score @s patron matches 108 run tellraw @s [{"text":"Hera","color":"gold"},{"text":" became your Patron!","color":"gray"}]

scoreboard players reset @s patron
