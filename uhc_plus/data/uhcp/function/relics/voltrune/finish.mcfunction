tag @s add UHCP_CurrentFluxFactor
execute if entity @s[tag=UHCP_ZeusFavor] as @a[gamemode=survival] if score @s uhcp_team = @e[tag=UHCP_CurrentFluxFactor,sort=nearest,limit=1] uhcp_team run effect give @s minecraft:resistance 1 5 true

particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 1 50 normal
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..12.5] ~ ~ ~ 1 1 0.8
tag @s remove UHCP_CurrentFluxFactor
kill @s