# Lobby parkour
function uhcp:lobby/parkour

# Relic Testing Chamber entrance
execute positioned ^57 ^7 ^32 run function uhcp:lobby/relic_testing/entrance

# Lobby items
function uhcp:lobby/item/fishing_rod/check
function uhcp:lobby/item/glow_bow/status
function uhcp:lobby/item/slowness_potion/check
function uhcp:lobby/item/goat_horn/check
function uhcp:lobby/item/firework_rocket_ball/check
function uhcp:lobby/item/firework_rocket_star/check
function uhcp:lobby/item/knockback_stick/status
execute if score %lobby_item_7 uhcp_initStatus matches 1 run function uhcp:lobby/item/player_head/reset
execute if score %lobby_item_8 uhcp_initStatus matches 1 run function uhcp:lobby/item/snowball/reset

# Lobby effects
execute if score %lobby_firework uhcp_initStatus matches 1 run function uhcp:lobby/effect/firework/reset
function uhcp:lobby/effect/speed/status
