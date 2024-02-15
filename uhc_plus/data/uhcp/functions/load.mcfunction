# Add Scoreboard Objectives
scoreboard objectives add augments trigger
scoreboard objectives add hunger trigger
scoreboard objectives add menu trigger
scoreboard objectives add top trigger
scoreboard objectives add uhcp_a_count dummy
scoreboard objectives add uhcp_a_durability dummy
scoreboard objectives add uhcp_a_gloryOfRa dummy
scoreboard objectives add uhcp_a_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add uhcp_a_selectedAugment dummy
scoreboard objectives add uhcp_a_choosingAugment dummy
scoreboard objectives add uhcp_a_patron dummy
scoreboard objectives add uhcp_a_stack dummy
scoreboard objectives add uhcp_a_tier dummy
scoreboard objectives add uhcp_a_timer dummy
scoreboard objectives add uhcp_a_validSelection dummy
scoreboard objectives add uhcp_hb_killedZombie dummy
scoreboard objectives add uhcp_hb_killedCreeper dummy
scoreboard objectives add uhcp_hb_killedSkeleton dummy
scoreboard objectives add uhcp_hb_killedSpider dummy
# Remove one below when in pack format with new advancements
scoreboard objectives add uhcp_anvil minecraft.custom:minecraft.interact_with_anvil
# -----------------------------------------------------------
scoreboard objectives add uhcp_arrowCount dummy
scoreboard objectives add uhcp_gameTime dummy
# Remove one below when in pack format with new advancements
scoreboard objectives add uhcp_grindstone minecraft.custom:minecraft.interact_with_grindstone
# -----------------------------------------------------------
scoreboard objectives add uhcp_gameDisplay dummy
scoreboard objectives add uhcp_hungerTimer dummy
scoreboard objectives add uhcp_initStatus dummy
scoreboard objectives add uhcp_itemCount dummy
scoreboard objectives add uhcp_itemInv dummy
scoreboard objectives add uhcp_lavaCurrentHeight dummy
scoreboard objectives add uhcp_lavaCurrentLayers dummy
scoreboard objectives add uhcp_lavaHeight dummy
scoreboard objectives add uhcp_lavaMaxHeight dummy
scoreboard objectives add uhcp_lavaTime dummy
scoreboard objectives add uhcp_lavaTimeInterval dummy
scoreboard objectives add uhcp_page dummy
scoreboard objectives add uhcp_settings dummy
# Remove one below when in pack format with new advancements
scoreboard objectives add uhcp_smithingTable minecraft.custom:minecraft.interact_with_smithing_table
# -----------------------------------------------------------
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_topDelay dummy
scoreboard objectives add uhcp_topCharge dummy
scoreboard objectives add uhcp_topCD dummy
scoreboard objectives add uhcp_death deathCount

# Add Display Timer Names
scoreboard players set %display uhcp_gameDisplay 10000
scoreboard players display name %display uhcp_gameDisplay {"text":"Time:","color":"gold"}
scoreboard objectives modify uhcp_gameDisplay displayname {"text":"Game Stats","color":"gold"}

scoreboard players display name %border uhcp_gameDisplay {"text":"Border Size:","color":"gold"}

scoreboard players set %players uhcp_gameDisplay 0
scoreboard players display name %players uhcp_gameDisplay {"text":"Players Left:","color":"gold"}

# Add bossbars
bossbar add uhcp_topcharge "Time Until Teleport:"
bossbar set minecraft:uhcp_topcharge color purple
bossbar set minecraft:uhcp_topcharge style notched_6
bossbar set minecraft:uhcp_topcharge max 60

bossbar add uhcp_augment "Time Remaining:"
bossbar set minecraft:uhcp_augment color white
bossbar set minecraft:uhcp_augment style notched_6
bossbar set minecraft:uhcp_augment max 900

bossbar add uhcp_augment "Cooldown:"
bossbar set minecraft:uhcp_augment color white
bossbar set minecraft:uhcp_augment style notched_6
bossbar set minecraft:uhcp_augment max 900

# Set default scores
execute unless score stage status matches 2 unless score %uhcp_gameStart uhcp_initStatus matches 1.. unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores
execute unless score stage status matches 2 unless score %uhcp_gameStart uhcp_initStatus matches 1.. unless score %uhcp_dimTime uhcp_gameTime matches -2147483648..2147483647 run scoreboard players set %uhcp_dimTime uhcp_gameTime 72000

# Forceload main dimension
execute in uhcp:main run forceload add 0 0

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute if score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. unless entity @e[tag=UHCP_Lock] unless score %uhcp_lock uhcp_itemCount matches 1.. run function uhcp:load/summon
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
