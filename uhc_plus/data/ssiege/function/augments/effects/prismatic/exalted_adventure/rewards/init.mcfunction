tellraw @a [{"selector":"@s"},{"text":" completed their Exalted Adventure!"}]
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
scoreboard players set @s exalted_item_1 -2

execute store result score @s uhcp_initStatus run random value 1..5
execute if score @s uhcp_initStatus matches 1 run return run function ssiege:augments/effects/prismatic/exalted_adventure/rewards/1
execute if score @s uhcp_initStatus matches 2 run return run function ssiege:augments/effects/prismatic/exalted_adventure/rewards/2
execute if score @s uhcp_initStatus matches 3 run return run function ssiege:augments/effects/prismatic/exalted_adventure/rewards/3
execute if score @s uhcp_initStatus matches 4 run return run function ssiege:augments/effects/prismatic/exalted_adventure/rewards/4
execute if score @s uhcp_initStatus matches 5 run return run function ssiege:augments/effects/prismatic/exalted_adventure/rewards/5