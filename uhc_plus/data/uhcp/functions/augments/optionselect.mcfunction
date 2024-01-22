# Main function that begins option selection
execute as @s run function uhcp:augments/createoptions


title @s subtitle {"text":"Choose 1","color":"white"}
title @s title {"text":"Select your Loot!","color":"gold","italic":true}
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run summon firework_rocket ~ ~7 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;16772608],FadeColors:[I;15662848]}]}}}}
tag @s add UHCP_ChoosingItem
