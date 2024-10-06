# Lobby parkour
function uhcp:lobby/parkour

# Relic Testing Chamber entrance
execute positioned ^57 ^7 ^32 run function uhcp:lobby/relic_testing/entrance

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
