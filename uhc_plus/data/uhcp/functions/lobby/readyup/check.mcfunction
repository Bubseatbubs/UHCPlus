execute store result score %ready uhcp_ready run execute if entity @a[scores={uhcp_ready=1}]
execute store result score %spectate uhcp_ready run execute if entity @a[scores={uhcp_ready=2}]
execute store result score %total uhcp_ready run execute if entity @a[scores={uhcp_ready=0..1}]

execute if score %ready uhcp_ready matches 1 if score %ready uhcp_ready = %total uhcp_ready run tellraw @a {"text":"The game cannot start with 1 player only!","color":"dark_red"}
execute if score %ready uhcp_ready matches 2.. if score %ready uhcp_ready = %total uhcp_ready run function uhcp:start