execute if entity @s[tag=UHCP_Explode] run return 0

clear @s *[custom_data~{uhcp_consumable:15b}] 1
tag @s add UHCP_Explode
playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Your organs were altered... You'll explode when you die!","color":"green"}