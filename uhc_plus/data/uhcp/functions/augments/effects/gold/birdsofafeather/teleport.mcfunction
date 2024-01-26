data modify entity @s PickupDelay set value 100s

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Teleport player
execute on origin run tag @s add UHCP_BirdMan
execute as @a[tag=!UHCP_BirdMan,gamemode=survival] at @s if score @a[tag=UHCP_BirdMan,sort=nearest,limit=1] uhcp_team = @s uhcp_team run tag @s add UHCP_BirdMaybeTarget
tag @r[tag=UHCP_BirdMaybeTarget] add UHCP_BirdTarget
tp @a[tag=UHCP_BirdMan,sort=nearest,limit=1] @r[tag=UHCP_BirdTarget]

execute at @a[tag=UHCP_BirdTarget] run playsound minecraft:entity.breeze.jump master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute at @a[tag=UHCP_BirdTarget] run particle cloud ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tag @a remove UHCP_BirdMan
tag @a remove UHCP_BirdMaybeTarget
tag @a remove UHCP_BirdTarget
kill @s