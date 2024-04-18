# Creates all scores required by the datapack

scoreboard objectives add ch_help trigger "show coordinates hud config"
scoreboard objectives add ch_toggle trigger "toggle coordinates hud"
scoreboard objectives add ch_toggleCons dummy
scoreboard players set #ch_toggleCons ch_toggleCons -1

scoreboard objectives add ch_x dummy
scoreboard objectives add ch_y dummy
scoreboard objectives add ch_z dummy

scoreboard objectives add ch_constant dummy
scoreboard players set #1 ch_constant 1
scoreboard players set #6 ch_constant 6
scoreboard players set #60 ch_constant 60
scoreboard players set #5 ch_constant 5
scoreboard players set #18 ch_constant 18
scoreboard players set #24 ch_constant 24

scoreboard objectives add ch_daytime dummy
scoreboard objectives add ch_allMinutes dummy
scoreboard objectives add ch_allHours dummy

scoreboard objectives add ch_hh dummy

scoreboard objectives add ch_mm dummy