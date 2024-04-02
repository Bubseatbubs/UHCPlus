execute if entity @e[tag=UHCP_Titan] run tellraw @a [{"text":"The Titans","color":"#d46e1c","bold":true},{"text":" return to their realm...","bold":false,"color":"#deb018"}]
execute as @e[tag=UHCP_Titan] at @s run function uhcp:entity/instant_kill
kill @e[tag=UHCP_TitanSpawn]