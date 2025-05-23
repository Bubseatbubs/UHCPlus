# This function selects a random encounter at the start of the game

# Generate a random number (assuming you have 5 encounters)
execute store result score %random_encounter currentEncounter run random value 1..1000

execute if score %random_encounter currentEncounter matches 1..75 run scoreboard players set %encounter currentEncounter 1
execute if score %random_encounter currentEncounter matches 76..150 run scoreboard players set %encounter currentEncounter 2
execute if score %random_encounter currentEncounter matches 151..225 run scoreboard players set %encounter currentEncounter 3
execute if score %random_encounter currentEncounter matches 226..300 run scoreboard players set %encounter currentEncounter 4
execute if score %random_encounter currentEncounter matches 301..360 run scoreboard players set %encounter currentEncounter 5
execute if score %random_encounter currentEncounter matches 361..420 run scoreboard players set %encounter currentEncounter 6
execute if score %random_encounter currentEncounter matches 421..480 run scoreboard players set %encounter currentEncounter 7
execute if score %random_encounter currentEncounter matches 481..540 run scoreboard players set %encounter currentEncounter 8
execute if score %random_encounter currentEncounter matches 541..590 run scoreboard players set %encounter currentEncounter 9
execute if score %random_encounter currentEncounter matches 591..640 run scoreboard players set %encounter currentEncounter 10
execute if score %random_encounter currentEncounter matches 641..690 run scoreboard players set %encounter currentEncounter 11
execute if score %random_encounter currentEncounter matches 691..740 run scoreboard players set %encounter currentEncounter 12
execute if score %random_encounter currentEncounter matches 741..780 run scoreboard players set %encounter currentEncounter 13
execute if score %random_encounter currentEncounter matches 781..820 run scoreboard players set %encounter currentEncounter 14
execute if score %random_encounter currentEncounter matches 821..860 run scoreboard players set %encounter currentEncounter 15
execute if score %random_encounter currentEncounter matches 861..890 run scoreboard players set %encounter currentEncounter 16
execute if score %random_encounter currentEncounter matches 891..920 run scoreboard players set %encounter currentEncounter 17
execute if score %random_encounter currentEncounter matches 921..950 run scoreboard players set %encounter currentEncounter 18
execute if score %random_encounter currentEncounter matches 951..980 run scoreboard players set %encounter currentEncounter 19
execute if score %random_encounter currentEncounter matches 981..990 run scoreboard players set %encounter currentEncounter 20
execute if score %random_encounter currentEncounter matches 991..1000 run scoreboard players set %encounter currentEncounter 21

# Initialize the encounter timer
scoreboard players set %encounter_countdown encounterTimer 0

# Schedule the encounter tick function
schedule function ssiege:start/encounters/encounter_countdown 1t replace