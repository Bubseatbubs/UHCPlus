# Move player to lobby
# Remove tags
tag @s remove UHCP_ChoosingItem
tag @s remove UHCP_Died
tag @s remove UHCP_DisableArmorAndOffhand
tag @s remove UHCP_Explode
tag @a remove UHCP_SLLock
tag @s[scores={uhcp_augment=0..}] remove UHCP_SoulflameEmbrace
execute if score @s uhcp_augment matches 220 run function uhcp:augments/effects/prismatic/cyberneticdownload/reset
execute if score @s uhcp_augment matches 25 run function uhcp:augments/effects/gold/scavengerhunt/reset

# Reset states
execute as @s[tag=UHCP_IsTeleporting] run function uhcp:top/cancel
execute as @s[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute as @s[tag=UHCP_IsRabbit] run function uhcp:consumables/magic_trick/reset
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# Scores
scoreboard players reset @s lobby
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
scoreboard players reset @s uhcp_augment
scoreboard players reset @s uhcp_game_time

# Return player as needed
execute in minecraft:overworld run forceload add -80 -80 79 79
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:left/lobby/reset
execute in minecraft:overworld run forceload remove -80 -80 79 79

# Lobby menu
execute unless score @s uhcp_ready = @s uhcp_ready run scoreboard players set @s uhcp_ready 0
function uhcp:lobby/menu
execute if score @s uhcp_ready matches 1 run function uhcp:lobby/readyup/cancel

# Manage player
gamemode adventure @s
execute unless items entity @s container.2 *[minecraft:custom_data~{uhcp_lobby:7b}] run function uhcp:lobby/menu
function uhcp:reset/attributes
execute as @a[scores={uhcp_augment=220}] run function uhcp:augments/effects/prismatic/cyberneticdownload/reset
effect clear @s
effect give @s minecraft:instant_health 2 5 true
effect give @s minecraft:resistance infinite 5 true
effect give @s minecraft:saturation infinite 255 true
experience set @s 0 levels
experience set @s 0 points
