# Particles while Last Stand is active
execute if score @s uhcp_game_time > %time uhcp_game_time run return run particle glow ^ ^2 ^ 16 2 16 0.5 100 normal

# Get current Sniffer's team
scoreboard players operation %team uhcp_initStatus = @s uhcp_team

# If Last Stand already procced, just run heal function
execute if score @s ssiege_unlocked_runesmith matches 0 at @s run return run function ssiege:bases/sniffers/last_stand/heal

# Set Sniffer scores
scoreboard players set @s ssiege_unlocked_runesmith 0
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time

# Heal back up to 150
data merge entity @s {Health:150f}

# Last Stand lasts 20 seconds (don't forget to update both effect time and scoreboard ticks if this ever changes)
effect give @s resistance 20 4 false
scoreboard players add @s uhcp_game_time 400

# Calculate how many shards to give
scoreboard players operation %temp ssiege_shards = %time uhcp_game_time
scoreboard players operation %temp ssiege_shards /= #2400 uhcp_const

# Give Shards
execute as @a run execute if score @s uhcp_team = %team uhcp_initStatus run scoreboard players operation @s ssiege_multi = %temp ssiege_shards
execute as @a run execute if score @s uhcp_team = %team uhcp_initStatus run loot give @s loot ssiege:multi_soulshard

# Text notifications for both teams and SFX
execute as @a run execute if score @s uhcp_team = %team uhcp_team run tellraw @s ["",{"text":"Your Sniffer's "},{"text":"Last Stand","bold":true,"color":"yellow"},{"text":" activated","color":"white"},{"text":"! Your Sniffer is "},{"text":"invulnerable for 20 seconds","color":"yellow"},{"text":" and you gain "},{"score":{"name":"%temp","objective":"ssiege_shards"}},{"text":" Soul Shards","color":"light_purple"},{"text":"!"}]
execute as @a run execute unless score @s uhcp_team = %team uhcp_team run tellraw @s ["",{"text":"You activated the other team's "},{"text":"Last Stand","bold":true,"color":"yellow"},{"text":"! Their Sniffer is "},{"text":"invulnerable for 20 seconds","color":"yellow"},{"text":" and they gained "},{"score":{"name":"%temp","objective":"ssiege_shards"}},{"text":" Soul Shards","color":"light_purple"},{"text":"!"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1