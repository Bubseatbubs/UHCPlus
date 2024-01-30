##
# Countdown for selecting an augment
##

scoreboard players remove %uhcp_augmentCountdown uhcp_gameTime 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches ..890 as @a[gamemode=adventure] at @s run ride @s mount @e[tag=UHCP_Lock,distance=..15,sort=nearest,limit=1]
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 880 as @a[gamemode=adventure] at @s run forceload remove ~ ~

# If all players selected an augment, skip to 5 seconds left
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101.. unless entity @a[gamemode=adventure,tag=UHCP_ChoosingItem] run scoreboard players set %uhcp_augmentCountdown uhcp_gameTime 100
execute store result bossbar uhcp_augment value run scoreboard players get %uhcp_augmentCountdown uhcp_gameTime

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 101.. run return 0

# Countdown noise
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 100 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 80 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 60 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 40 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 20 as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if score %uhcp_augmentCountdown uhcp_gameTime matches 1 as @a[gamemode=adventure] unless score @s uhcp_a_selectedAugment = @s uhcp_a_selectedAugment at @s run function uhcp:augments/autoselect

execute if score %uhcp_augmentCountdown uhcp_gameTime matches 0.. run return 0

# Ran once countdown reaches 0. Initializes the game as UHC Pack would've done, and gives all players their selected augments
gamemode survival @a[gamemode=adventure]
bossbar set minecraft:uhcp_augment players
execute in uhcp:main run tp @e[tag=UHCP_Lock] 0 -63 0

effect clear @a[gamemode=survival]
effect give @a[gamemode=survival] speed 15 0 false
effect give @a[gamemode=survival] resistance 120 4 false
effect give @a[gamemode=survival] haste infinite 0 true

# Boots Effect (from UHC Pack)
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:snowy_beach run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:snowy_plains run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:snowy_slopes run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:snowy_taiga run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:frozen_peaks run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:frozen_ocean run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:frozen_river run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:ice_spikes run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:grove run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s if biome ~ ~ ~ minecraft:jagged_peaks run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute as @a[gamemode=survival] at @s run execute if block ~ ~-1 ~ minecraft:powder_snow run setblock ~ ~-1 ~ minecraft:snow_block

execute as @a[gamemode=survival] at @s run function uhcp:augments/initializeaugments