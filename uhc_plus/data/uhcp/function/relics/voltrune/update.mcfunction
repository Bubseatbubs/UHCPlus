# Update Voltrune effect
tag @s add UHCP_CurrentFluxFactor
scoreboard players add @s uhcp_timer 1
scoreboard players add @s uhcp_game_time 1

execute if entity @s[tag=UHCP_ZeusFavor] if score @s uhcp_game_time matches 118 as @e[tag=!UHCP_Invulnerable,predicate=uhcp:targetable,distance=..12.5] unless score @s uhcp_team = @e[tag=UHCP_CurrentFluxFactor,sort=nearest,limit=1] uhcp_team at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] unless score @s uhcp_team = @e[tag=UHCP_CurrentFluxFactor,sort=nearest,limit=1] uhcp_team run effect give @s minecraft:slowness 1 0 false
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] if score @s uhcp_team = @e[tag=UHCP_CurrentFluxFactor,sort=nearest,limit=1] uhcp_team run effect give @s minecraft:speed 1 1 false
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] if score @s uhcp_team = @e[tag=UHCP_CurrentFluxFactor,sort=nearest,limit=1] uhcp_team run effect give @s minecraft:jump_boost 1 0 false

execute as @s[tag=!UHCP_Voltrune_Active,nbt={Motion:[0.0,0.0,0.0]}] run tag @s add UHCP_Voltrune_Active
execute as @s[tag=UHCP_Voltrune_Active] run tp @s ~ ~ ~ ~5 ~

execute if score @s uhcp_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ -0.1 -0.1 -0.1 1 10 normal
execute if score @s uhcp_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ 6 6 6 10 35 normal

execute unless score @s uhcp_timer matches 30.. run return 0
playsound minecraft:block.beacon.activate master @a[distance=..12.5] ~ ~ ~
execute positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles
scoreboard players set @s uhcp_timer 0


tag @s remove UHCP_CurrentFluxFactor
execute unless score @s uhcp_game_time matches 150.. run return 0
function uhcp:relics/voltrune/finish
