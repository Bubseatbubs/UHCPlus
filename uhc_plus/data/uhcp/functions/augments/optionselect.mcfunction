##
# Initializes player's choices for augments
##

# Initialize player tags + scores + options
clear @s
tag @s remove UHCP_ChoosingItem
scoreboard players reset @s uhcp_a_selectedAugment
function uhcp:augments/generatepanes
function uhcp:augments/generatechoices

# Extra fluff
title @s subtitle {"text":"Choose 1","color":"white"}
title @s title {"text":"Choose your augment!","color":"gold","italic":true}
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run summon firework_rocket ~ ~7 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;16772608],FadeColors:[I;15662848]}]}}}}

# Final Cleanup
tag @s add UHCP_ChoosingItem
scoreboard players set %uhcp_augments uhcp_initStatus 1
