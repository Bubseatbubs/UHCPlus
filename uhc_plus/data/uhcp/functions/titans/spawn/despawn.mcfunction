execute if entity @e[tag=UHCP_Titan] run tellraw @a [{"text":"The Titans","color":"#3B1CD5","bold":true},{"text":" return to their realm...","bold":false}]
execute as @e[tag=UHCP_Titan] at @s run function uhcp:entity/instant_kill
kill @e[tag=UHCP_TitanSpawn]