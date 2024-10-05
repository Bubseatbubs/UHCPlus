# Patron
execute as @a[scores={patron=1..99}] run function uhcp:lobby/patron/menu
execute as @a[scores={patron=100..109}] at @s run function uhcp:lobby/patron/select
execute if score %patrons uhcp_settings matches 1 run scoreboard players enable @a patron

# Team
execute if score %team uhcp_settings matches 1 if score %players_select_teams uhcp_settings matches 1 run function uhcp:lobby/team

# Lobby parkour
function uhcp:lobby/parkour
scoreboard players remove %lobby_parkour uhcp_game_time 1

# Skip Travel
execute as @a[scores={lobby=1}] run function uhcp:lobby/teleport/menu
execute as @a[scores={lobby=2..6}] run function uhcp:lobby/teleport/select
scoreboard players enable @a lobby

# Relic Testing Chamber Entrance
execute at @e[tag=UHCP_LobbyOrigin,limit=1] positioned ^57 ^7 ^32 run function uhcp:lobby/relic_testing/entrance

# Credits - player head rotation
execute as @e[tag=UHCP_LobbyCredits] at @s run rotate @s ~1 ~

# Kill arrows in ground
execute unless score %lobby_arrows uhcp_game_time matches 1.. run function uhcp:lobby/kill_arrows
scoreboard players remove %lobby_arrows uhcp_game_time 1

# Lobby items
execute if score %lobby_item_0 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/fishing_rod
function uhcp:lobby/item/glow_bow/status
execute if score %lobby_item_2 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/slowness_potion
execute if score %lobby_item_3 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/goat_horn
execute if score %lobby_item_4 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/firework_rocket_ball
execute if score %lobby_item_5 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/firework_rocket_star
function uhcp:lobby/item/knockback_stick/status
execute if score %lobby_item_7 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/player_head
execute if score %lobby_item_8 uhcp_initStatus matches 1 run function uhcp:lobby/item/reset/snowball

# Lobby effects
execute if score %lobby_firework uhcp_initStatus matches 1 run function uhcp:lobby/effect/reset_firework
function uhcp:lobby/effect/speed/status
