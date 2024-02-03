# Update Voltrune effect
tag @s add UHCP_Gravity
scoreboard players add @s uhcp_a_timer 1
scoreboard players add @s uhcp_gameTime 1
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] unless score @s uhcp_team = @e[tag=UHCP_Gravity,sort=nearest,limit=1] uhcp_team run effect give @s slowness 1 2 false
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] if score @s uhcp_team = @e[tag=UHCP_Gravity,sort=nearest,limit=1] uhcp_team run effect give @s speed 1 1 false
execute at @s[tag=UHCP_Voltrune_Active] as @e[type=!#uhcp:inanimate_mobs,distance=..12.5] if score @s uhcp_team = @e[tag=UHCP_Gravity,sort=nearest,limit=1] uhcp_team run effect give @s jump_boost 1 0 false

execute as @s[tag=!UHCP_Voltrune_Active,nbt={Motion:[0.0,0.0,0.0]}] run tag @s add UHCP_Voltrune_Active
execute as @s[tag=UHCP_Voltrune_Active] run tp @s ~ ~ ~ ~5 ~

execute if score @s uhcp_a_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ -0.1 -0.1 -0.1 1 10 normal
execute if score @s uhcp_a_timer matches 3.. positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ 6 6 6 10 35 normal

execute unless score @s uhcp_a_timer matches 30.. run return 0
playsound block.beacon.activate master @a[distance=..12.5] ~ ~ ~
execute positioned ~ ~0.6 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~90 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~180 ~ run function uhcp:relics/voltrune/particles
execute positioned ~ ~0.6 ~ rotated ~270 ~ run function uhcp:relics/voltrune/particles
scoreboard players set @s uhcp_a_timer 0

execute unless score @s uhcp_gameTime matches 150.. run return 0
particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 1 50 normal
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..12.5] ~ ~ ~ 1 1 0.8
kill @s
