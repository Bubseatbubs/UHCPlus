scoreboard players set @s ssiege_unlocked_runesmith 0

# Get current Sniffer's team
scoreboard players operation %team uhcp_initStatus = @s uhcp_team

# Calculate how many shards to give
scoreboard players operation %temp ssiege_shards = %time uhcp_game_time
scoreboard players operation %temp ssiege_shards /= #2400 uhcp_const

# Give Shards
execute as @a run execute if score @s uhcp_team = %team uhcp_initStatus run scoreboard players operation @s ssiege_multi = %temp ssiege_shards
execute as @a run execute if score @s uhcp_team = %team uhcp_initStatus run loot give @s loot ssiege:multi_soulshard

# Notify players
execute as @a run execute if score @s uhcp_team = %team uhcp_team run tellraw @s ["",{"text":"Your Sniffer's "},{"text":"Last Stand","bold":true,"color":"yellow"},{"text":" deactivated","color":"white"},{"text":". You've gained "},{"score":{"name":"%temp","objective":"ssiege_shards"}},{"text":" Soul Shards","color":"light_purple"},{"text":"."}]
execute as @a run execute unless score @s uhcp_team = %team uhcp_team run tellraw @s ["",{"text":"The other team's Sniffer's "},{"text":"Last Stand","bold":true,"color":"yellow"},{"text":" deactivated","color":"white"},{"text":". They gained "},{"score":{"name":"%temp","objective":"ssiege_shards"}},{"text":" Soul Shards","color":"light_purple"},{"text":"."}]
execute as @a run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1