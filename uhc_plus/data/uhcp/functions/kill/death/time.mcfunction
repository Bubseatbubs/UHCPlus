# Track death time for dead players
execute as @a[tag=UHCP_Died,scores={uhcp_deathTime=20..}] run function uhcp:kill/death/respawn_check

scoreboard players add @a[tag=UHCP_Died] uhcp_deathTime 1
