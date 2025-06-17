execute store result score %random_encounter ssiege_current_encounter run random value 1..100

execute if score %random_encounter ssiege_current_encounter matches 1..7 run return 1
execute if score %random_encounter ssiege_current_encounter matches 8..14 run return 14
execute if score %random_encounter ssiege_current_encounter matches 15..21 run return 14
execute if score %random_encounter ssiege_current_encounter matches 22..24 run return 4
execute if score %random_encounter ssiege_current_encounter matches 25..30 run return 5
execute if score %random_encounter ssiege_current_encounter matches 31..37 run return 6
execute if score %random_encounter ssiege_current_encounter matches 38..41 run return 7
execute if score %random_encounter ssiege_current_encounter matches 42..48 run return 8
execute if score %random_encounter ssiege_current_encounter matches 49..53 run return 9
execute if score %random_encounter ssiege_current_encounter matches 54..56 run return 10
execute if score %random_encounter ssiege_current_encounter matches 57..61 run return 11
execute if score %random_encounter ssiege_current_encounter matches 62..64 run return 12
execute if score %random_encounter ssiege_current_encounter matches 65..70 run return 13
execute if score %random_encounter ssiege_current_encounter matches 71..80 run return 14
execute if score %random_encounter ssiege_current_encounter matches 81..85 run return 15
execute if score %random_encounter ssiege_current_encounter matches 86 run return 16
execute if score %random_encounter ssiege_current_encounter matches 87..92 run return 17
execute if score %random_encounter ssiege_current_encounter matches 93..94 run return 18
execute if score %random_encounter ssiege_current_encounter matches 95..98 run return 19

# Temporarily replace these encounters until they are implemented
execute if score %random_encounter ssiege_current_encounter matches 99 run return 14
execute if score %random_encounter ssiege_current_encounter matches 100 run return 14