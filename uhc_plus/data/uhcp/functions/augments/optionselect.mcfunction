##
# Initializes player's choices for augments
##

# Initialize player tags + scores + options
clear @s
tag @s remove UHCP_ChoosingItem
scoreboard players set @s uhcp_a_choosingAugment 0
scoreboard players reset @s uhcp_a_selectedAugment
function uhcp:augments/generatepanes
function uhcp:augments/generatepatron
function uhcp:augments/generatechoices

# Extra fluff
title @s subtitle {"text":"Choose 1","color":"white"}
title @s title {"text":"Choose your augment!","color":"gold","italic":true}
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run summon minecraft:firework_rocket ~ ~7 ~ {FireworksItem:{id:"firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16772608],fade_colors:[I;15662848],has_trail:1b}]}}}}

# Final Cleanup
tag @s add UHCP_ChoosingItem
