# Calculate Upgrade ID [upgrade tier] * 6 + [upgrade choice]
# See dev spreadsheet for specific id values
scoreboard players operation @s uhcp_initStatus = @s uhcp_const
scoreboard players operation @s uhcp_initStatus *= #6 uhcp_const
scoreboard players operation @s uhcp_initStatus += @s upgrade

# Reset for next upgrade menu
tag @s remove CD_SelectingUpgrade
scoreboard players set @s upgrade 0
scoreboard players add @s uhcp_const 1

# Get the Player's current attributes
function ssiege:augments/effects/prismatic/cybernetic_download/apply/get_current_attributes

# Nofity player of success
tellraw @s ["",{"text":"[Cybernetic Download]","bold":true,"color":"aqua"},{"text":" Upgrade downloaded!","color":"green"}]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Apply effect based on calculated ID
# Circuits
execute if score @s uhcp_initStatus matches 1 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/health
execute if score @s uhcp_initStatus matches 2 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/toughness
execute if score @s uhcp_initStatus matches 3 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/utility
execute if score @s uhcp_initStatus matches 4 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/mobility
execute if score @s uhcp_initStatus matches 5 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/offensive
execute if score @s uhcp_initStatus matches 6 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/circuits/blitz

# Configurations
execute if score @s uhcp_initStatus matches 7 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/health
execute if score @s uhcp_initStatus matches 8 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/toughness
execute if score @s uhcp_initStatus matches 9 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/utility
execute if score @s uhcp_initStatus matches 10 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/mobility
execute if score @s uhcp_initStatus matches 11 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/offensive
execute if score @s uhcp_initStatus matches 12 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/configuration/blitz

# Protocols
execute if score @s uhcp_initStatus matches 13 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/health
execute if score @s uhcp_initStatus matches 14 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/toughness
execute if score @s uhcp_initStatus matches 15 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/utility
execute if score @s uhcp_initStatus matches 16 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/mobility
execute if score @s uhcp_initStatus matches 17 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/offensive
execute if score @s uhcp_initStatus matches 18 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/protocol/blitz

# Stabilizers
execute if score @s uhcp_initStatus matches 19 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/health
execute if score @s uhcp_initStatus matches 20 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/toughness
execute if score @s uhcp_initStatus matches 21 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/utility
execute if score @s uhcp_initStatus matches 22 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/mobility
execute if score @s uhcp_initStatus matches 23 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/offensive
execute if score @s uhcp_initStatus matches 24 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/stabilizer/blitz

# Cores
execute if score @s uhcp_initStatus matches 25 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/health
execute if score @s uhcp_initStatus matches 26 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/toughness
execute if score @s uhcp_initStatus matches 27 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/utility
execute if score @s uhcp_initStatus matches 28 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/mobility
execute if score @s uhcp_initStatus matches 29 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/offensive
execute if score @s uhcp_initStatus matches 30 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/core/blitz

# Matrices
execute if score @s uhcp_initStatus matches 31 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/health
execute if score @s uhcp_initStatus matches 32 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/toughness
execute if score @s uhcp_initStatus matches 33 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/utility
execute if score @s uhcp_initStatus matches 34 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/mobility
execute if score @s uhcp_initStatus matches 35 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/offensive
execute if score @s uhcp_initStatus matches 36 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/matrix/blitz

# Apex
execute if score @s uhcp_initStatus matches 37 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/health
execute if score @s uhcp_initStatus matches 38 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/toughness
execute if score @s uhcp_initStatus matches 39 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/utility
execute if score @s uhcp_initStatus matches 40 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/mobility
execute if score @s uhcp_initStatus matches 41 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/offensive
execute if score @s uhcp_initStatus matches 42 run return run function ssiege:augments/effects/prismatic/cybernetic_download/apply/apex/blitz