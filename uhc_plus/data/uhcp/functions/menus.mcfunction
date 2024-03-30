# Patron
scoreboard players enable @a patron
execute as @a if score @s patron matches 1..99 run function uhcp:lobby/patron/menu
execute as @a at @s if score @s patron matches 100..109 run function uhcp:lobby/patron/select

# Team
execute if score %team uhcp_settings matches 1 if score %players_select_teams uhcp_settings matches 1 run function uhcp:lobby/team
