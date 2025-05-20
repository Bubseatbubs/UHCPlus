scoreboard players reset @s uhcp_leave

tag @s add UHCP_Explode
playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Your organs were altered... you'll explode when you die!","color":"green"}
