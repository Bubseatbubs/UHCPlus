tag @s add UHCP_CurrentTurret
execute on passengers as @s[tag=UHCP_TurretCannon] run function uhcp:relics/runic_sentry/laser/passengers
execute as @n[tag=UHCP_New] rotated as @n[tag=UHCP_TurretCannon] run rotate @s ~-90 ~
scoreboard players operation @n[tag=UHCP_New] uhcp_game_id = @n[tag=UHCP_CurrentTurret] uhcp_game_id
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @n[tag=UHCP_CurrentTurret] uhcp_team
tag @e remove UHCP_New
tag @e remove UHCP_CurrentTurret
