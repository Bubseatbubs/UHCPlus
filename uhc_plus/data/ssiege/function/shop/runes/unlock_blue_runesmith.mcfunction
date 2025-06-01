scoreboard players set %blue ssiege_unlocked_runesmith 1
tellraw @a[team=blue] [{"text":"Your team's ","color":"blue"},{"text":"Runesmith","color":"light_purple"},{"text":" was unlocked!","color":"blue"}]
kill @e[type=armor_stand,tag=SSIEGE_BLUE_RUNESMITH]