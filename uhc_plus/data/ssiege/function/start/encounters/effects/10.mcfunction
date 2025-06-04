# Dinodan Encounter
execute store result score %rand ssiege_current_encounter run random roll 0..3

# Temporary choices, will have room for more fun outcomes later when more augments are implemented
execute if score %rand ssiege_current_encounter matches 0 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Dinodan gave everyone "},{"text":"Gapple Gap II","bold":true,"color":"gold"},{"text":"!"}]
execute if score %rand ssiege_current_encounter matches 0 run execute as @a run function ssiege:augments/effects/gold/gapplegapi

execute if score %rand ssiege_current_encounter matches 1 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Dinodan gave everyone "},{"text":"Large and in Charge","bold":true,"color":"gold"},{"text":"!"}]
execute if score %rand ssiege_current_encounter matches 1 run execute as @a run function ssiege:augments/effects/gold/largeandincharge

execute if score %rand ssiege_current_encounter matches 2 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Dinodan gave everyone "},{"text":"Lil' Bro","bold":true,"color":"gold"},{"text":"!"}]
execute if score %rand ssiege_current_encounter matches 2 run execute as @a run function ssiege:augments/effects/gold/lilbro

execute if score %rand ssiege_current_encounter matches 3 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Dinodan gave everyone "},{"text":"Oppenheimer","bold":true,"color":"gold"},{"text":"!"}]
execute if score %rand ssiege_current_encounter matches 3 run execute as @a run function ssiege:augments/effects/gold/oppenheimer