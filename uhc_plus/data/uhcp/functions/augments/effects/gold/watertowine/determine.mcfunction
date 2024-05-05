execute unless score @s uhcp_game_time matches 42000 run function uhcp:augments/effects/gold/watertowine/give

scoreboard players add @s uhcp_game_time 12000
execute unless score @s uhcp_game_time matches 48000 unless score @s uhcp_game_time matches 54000 if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed

execute unless score @s uhcp_game_time matches 48000 unless score @s uhcp_game_time matches 54000 run return fail
scoreboard players remove @s uhcp_game_time 6000

execute unless score @s uhcp_game_time matches 48000 if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed

# May start running at time of 42000 (apologies for this function, hopefully the timing never needs changed)
execute unless score @s uhcp_game_time matches 48000 run return fail
execute store result score @s uhcp_initStatus run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}]
execute unless score @s uhcp_initStatus matches ..0 run function uhcp:augments/effects/gold/watertowine/convert

execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed
