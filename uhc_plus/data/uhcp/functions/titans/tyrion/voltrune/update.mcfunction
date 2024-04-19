# Update Voltrune effect
tag @s add UHCP_CurrentFluxFactor
scoreboard players add @s uhcp_timer 1
scoreboard players add @s uhcp_game_time 1

execute if score @s uhcp_game_time matches 118 as @a[gamemode=survival,distance=..12.5] at @s run execute at @a[distance=..16,gamemode=survival] run playsound block.anvil.place master @s ~ ~4 ~ 100 1 1
execute if score @s uhcp_game_time matches 118 as @a[gamemode=survival,distance=..12.5] at @s run execute at @a[distance=..16,gamemode=survival] run summon armor_stand ~ ~8 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_BoneBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_BBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},Glowing:1b,shadow_radius:15f,shadow_strength:1f,block_state:{Name:"minecraft:gold_block"}}]}
execute as @a[gamemode=survival,distance=..12.5] run effect give @s slowness 1 0 false

tp @s ~ ~ ~ ~5 ~
execute facing entity @p[gamemode=survival,distance=..16] eyes run tp @s ^ ^ ^0.15

execute if score @s uhcp_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ -0.1 -0.1 -0.1 1 10 normal
execute if score @s uhcp_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ 6 6 6 10 35 normal

execute unless score @s uhcp_timer matches 30.. run return 0
playsound block.beacon.activate master @a[distance=..12.5] ~ ~ ~
execute positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles
scoreboard players set @s uhcp_timer 0

tag @s remove UHCP_CurrentFluxFactor
execute unless score @s uhcp_game_time matches 150.. run return 0
function uhcp:relics/voltrune/finish
