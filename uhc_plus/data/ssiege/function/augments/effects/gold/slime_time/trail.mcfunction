execute store result score @s uhcp_initStatus run random value 0..99
execute if score @s uhcp_initStatus matches 21.. run return fail

scoreboard players set %containers uhcp_settings 0
fill ^-1 ^-1 ^-1 ^1 ^-1 ^-2 minecraft:slime_block replace #uhcp:containers destroy

execute if score @s uhcp_initStatus matches 0..6 run fill ^-1 ^-1 ^-1 ^-1 ^-1 ^-1 minecraft:slime_block replace #uhcp:no_fluids_breakable
execute if score @s uhcp_initStatus matches 0..6 run fill ^0 ^-1 ^-2 ^0 ^-1 ^-2 minecraft:slime_block replace #uhcp:no_fluids_breakable
execute if score @s uhcp_initStatus matches 7..13 run fill ^0 ^-1 ^-1 ^0 ^-1 ^-1 minecraft:slime_block replace #uhcp:no_fluids_breakable
execute if score @s uhcp_initStatus matches 7..13 run fill ^1 ^-1 ^-2 ^1 ^-1 ^-2 minecraft:slime_block replace #uhcp:no_fluids_breakable
execute if score @s uhcp_initStatus matches 14..20 run fill ^1 ^-1 ^-1 ^1 ^-1 ^-1 minecraft:slime_block replace #uhcp:no_fluids_breakable
execute if score @s uhcp_initStatus matches 14..20 run fill ^-1 ^-1 ^-2 ^-1 ^-1 ^-2 minecraft:slime_block replace #uhcp:no_fluids_breakable

scoreboard players set %containers uhcp_settings 1
