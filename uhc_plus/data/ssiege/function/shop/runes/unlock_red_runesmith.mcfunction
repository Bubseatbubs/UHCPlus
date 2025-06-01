scoreboard players set %red ssiege_unlocked_runesmith 1
kill @e[type=armor_stand,tag=SSIEGE_RED_RUNESMITH]
tellraw @a[team=red] ["",{"text":"Your team's ","color":"red"},{"text":"Runesmith","color":"light_purple"},{"text":" was unlocked!","color":"red"}]