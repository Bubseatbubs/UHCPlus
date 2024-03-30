function uhcp:lobby/patron/menu

execute if score @s patron matches 100 run function uhcp:lobby/patron/select/aphrodite
execute if score @s patron matches 101 run function uhcp:lobby/patron/select/apollo
execute if score @s patron matches 102 run function uhcp:lobby/patron/select/artemis
execute if score @s patron matches 103 run function uhcp:lobby/patron/select/athena
execute if score @s patron matches 104 run function uhcp:lobby/patron/select/demeter
execute if score @s patron matches 105 run function uhcp:lobby/patron/select/hephaestus
execute if score @s patron matches 106 run function uhcp:lobby/patron/select/hermes
execute if score @s patron matches 107 run function uhcp:lobby/patron/select/loki
execute if score @s patron matches 108 run function uhcp:lobby/patron/select/hera
execute if score @s patron matches 109 run function uhcp:lobby/patron/select/triton

scoreboard players reset @s patron
