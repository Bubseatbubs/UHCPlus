# Determines the encounter id randomly then starts the encounter phase

execute store result score %random_encounter ssiege_current_encounter run random value 1..1000

execute if score %random_encounter ssiege_current_encounter matches 1..75 run scoreboard players set %encounter ssiege_current_encounter 1

# Temporarily disable superiority encounter while most Prismatics and structures are still in development
execute if score %random_encounter ssiege_current_encounter matches 76..150 run scoreboard players set %encounter ssiege_current_encounter 14
execute if score %random_encounter ssiege_current_encounter matches 151..225 run scoreboard players set %encounter ssiege_current_encounter 14
execute if score %random_encounter ssiege_current_encounter matches 226..300 run scoreboard players set %encounter ssiege_current_encounter 4
execute if score %random_encounter ssiege_current_encounter matches 301..360 run scoreboard players set %encounter ssiege_current_encounter 5
execute if score %random_encounter ssiege_current_encounter matches 361..420 run scoreboard players set %encounter ssiege_current_encounter 6
execute if score %random_encounter ssiege_current_encounter matches 421..480 run scoreboard players set %encounter ssiege_current_encounter 7
execute if score %random_encounter ssiege_current_encounter matches 481..540 run scoreboard players set %encounter ssiege_current_encounter 8
execute if score %random_encounter ssiege_current_encounter matches 541..590 run scoreboard players set %encounter ssiege_current_encounter 9
execute if score %random_encounter ssiege_current_encounter matches 591..640 run scoreboard players set %encounter ssiege_current_encounter 10
execute if score %random_encounter ssiege_current_encounter matches 641..690 run scoreboard players set %encounter ssiege_current_encounter 11
execute if score %random_encounter ssiege_current_encounter matches 691..740 run scoreboard players set %encounter ssiege_current_encounter 12
execute if score %random_encounter ssiege_current_encounter matches 741..780 run scoreboard players set %encounter ssiege_current_encounter 13
execute if score %random_encounter ssiege_current_encounter matches 781..820 run scoreboard players set %encounter ssiege_current_encounter 14
execute if score %random_encounter ssiege_current_encounter matches 821..860 run scoreboard players set %encounter ssiege_current_encounter 15
execute if score %random_encounter ssiege_current_encounter matches 861..890 run scoreboard players set %encounter ssiege_current_encounter 16
execute if score %random_encounter ssiege_current_encounter matches 891..920 run scoreboard players set %encounter ssiege_current_encounter 17
execute if score %random_encounter ssiege_current_encounter matches 921..950 run scoreboard players set %encounter ssiege_current_encounter 18
execute if score %random_encounter ssiege_current_encounter matches 951..980 run scoreboard players set %encounter ssiege_current_encounter 19

# Temporarily replace these encounters with V1L3 until they are implemented
execute if score %random_encounter ssiege_current_encounter matches 981..990 run scoreboard players set %encounter ssiege_current_encounter 14
execute if score %random_encounter ssiege_current_encounter matches 991..1000 run scoreboard players set %encounter ssiege_current_encounter 14

function ssiege:start/encounters/start_encounter_phase