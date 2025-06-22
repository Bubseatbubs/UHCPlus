# Constants
scoreboard players set #-1 uhcp_const -1
scoreboard players set #0 uhcp_const 0
scoreboard players set #2 uhcp_const 2
scoreboard players set #3 uhcp_const 3
scoreboard players set #4 uhcp_const 4
scoreboard players set #5 uhcp_const 5
scoreboard players set #6 uhcp_const 6
scoreboard players set #7 uhcp_const 7
scoreboard players set #8 uhcp_const 8
scoreboard players set #9 uhcp_const 9
scoreboard players set #10 uhcp_const 10
scoreboard players set #11 uhcp_const 11
scoreboard players set #12 uhcp_const 12
scoreboard players set #13 uhcp_const 13
scoreboard players set #14 uhcp_const 14
scoreboard players set #15 uhcp_const 15
scoreboard players set #16 uhcp_const 16
scoreboard players set #20 uhcp_const 20
scoreboard players set #24 uhcp_const 24
scoreboard players set #30 uhcp_const 30
scoreboard players set #35 uhcp_const 35
scoreboard players set #40 uhcp_const 40
scoreboard players set #45 uhcp_const 45
scoreboard players set #60 uhcp_const 60
scoreboard players set #63 uhcp_const 63
scoreboard players set #64 uhcp_const 64
scoreboard players set #100 uhcp_const 100
scoreboard players set #118 uhcp_const 118
scoreboard players set #200 uhcp_const 200
scoreboard players set #1200 uhcp_const 1200
scoreboard players set #2400 uhcp_const 2400

# Set game mode if unset
execute unless score %mode uhcp_settings = %mode uhcp_settings run scoreboard players operation %mode uhcp_settings = %mode_def uhcp_settings

# Set default settings scores according to mode
execute if score %mode uhcp_settings matches 0 run return run function uhcp:load/scores/uhcp
execute if score %mode uhcp_settings matches 1 run function uhcp:load/scores/ssiege
