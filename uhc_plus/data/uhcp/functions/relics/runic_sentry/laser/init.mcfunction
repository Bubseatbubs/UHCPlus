tag @s add UHCP_CurrentTurret
execute on passengers if entity @s[tag=UHCP_TurretCannon] positioned ~ ~1.5 ~ run summon marker ^ ^ ^ {Tags:["UHCP_TurretShot","UHCP_Summon","UHCP_New"]}
execute on passengers if entity @s[tag=UHCP_TurretCannon] run data merge entity @s {transformation:[-0.0000f,1.0000f,0.0000f,0.0000f,-0.5000f,-0.0000f,0.0000f,1.6250f,0.0000f,0.0000f,0.4500f,-0.2225f,0.0000f,0.0000f,0.0000f,1.0000f],interpolation_duration:1,start_interpolation:0}
execute on passengers if entity @s[tag=UHCP_TurretCannon] positioned ~ ~1.5 ~ run particle minecraft:spit ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal
execute as @e[tag=UHCP_New] at @s rotated as @e[tag=UHCP_TurretCannon,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=UHCP_New] run scoreboard players operation @s uhcp_id = @e[tag=UHCP_CurrentTurret,sort=nearest,limit=1] uhcp_id
execute as @e[tag=UHCP_New] run scoreboard players operation @s uhcp_team = @e[tag=UHCP_CurrentTurret,sort=nearest,limit=1] uhcp_team
tag @e remove UHCP_New
tag @e remove UHCP_CurrentTurret