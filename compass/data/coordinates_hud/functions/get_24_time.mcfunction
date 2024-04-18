# Gets the 24hr time in 2 variables, hh and mm

execute store result score #ch_daytime ch_daytime run time query daytime

scoreboard players operation #ch_allHours ch_allHours = #ch_daytime ch_daytime
scoreboard players operation #ch_allHours ch_allHours /= #5 ch_constant
scoreboard players operation #ch_allHours ch_allHours *= #18 ch_constant
scoreboard players operation #ch_allHours ch_allHours /= #60 ch_constant
scoreboard players operation #ch_allMinutes ch_allMinutes = #ch_allHours ch_allHours
scoreboard players operation #ch_allHours ch_allHours /= #60 ch_constant

scoreboard players operation #ch_hh ch_hh = #ch_allHours ch_allHours
scoreboard players operation #ch_hh ch_hh += #6 ch_constant

scoreboard players operation #ch_allHours ch_allHours *= #60 ch_constant

scoreboard players operation #ch_mm ch_mm = #ch_allMinutes ch_allMinutes
scoreboard players operation #ch_mm ch_mm -= #ch_allHours ch_allHours

execute if score #ch_hh ch_hh matches 24.. run scoreboard players operation #ch_hh ch_hh -= #24 ch_constant