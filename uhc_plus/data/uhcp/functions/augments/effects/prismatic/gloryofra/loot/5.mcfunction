give @s enchanted_golden_apple
execute store result score %health uhcp_a_count run attribute @s generic.max_health get 1
scoreboard players add %health uhcp_a_count 20

execute store result storage uhcp:health input.health float 1 run scoreboard players get %health uhcp_a_count

function uhcp:augments/effects/prismatic/gloryofra/givehearts with storage uhcp:health input
effect give @s instant_health 1 10 true