scoreboard players remove @a[scores={uhcp_a_timer=0..2147483647}] uhcp_a_timer 1

# One Time Effects
execute if score %time uhcp_gameTime matches 54000 as @a[scores={uhcp_a_selectedAugment=5}] run function uhcp:augments/effects/gold/delayedprotection
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=18}] run function uhcp:augments/effects/gold/latelooter/haste
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=25}] run function uhcp:augments/effects/gold/secondwind
execute if score %time uhcp_gameTime matches 54000 as @a[scores={uhcp_a_selectedAugment=35}] run tellraw @s {"text":"Copper will convert to Gold in 5 minutes!","color":"red"}
execute if score %time uhcp_gameTime matches 58800 as @a[scores={uhcp_a_selectedAugment=35}] run tellraw @s {"text":"Copper will convert to Gold in 1 minute!","color":"red"}
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=35}] run function uhcp:augments/effects/gold/coppercollector
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=35}] run function uhcp:augments/effects/gold/coppercollector_block
execute if score %time uhcp_gameTime matches 3600 as @a[scores={uhcp_a_selectedAugment=101}] run function uhcp:augments/effects/silver/afk/freedom
execute if score %time uhcp_gameTime matches 3600 as @a[scores={uhcp_a_selectedAugment=108}] run function uhcp:augments/effects/silver/drunkenstupor/cure
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=120}] run function uhcp:augments/effects/silver/onthehunt
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=121}] run function uhcp:augments/effects/silver/protectprotocoli
execute if score %time uhcp_gameTime matches 36000 as @a[scores={uhcp_a_selectedAugment=130}] run function uhcp:augments/effects/silver/supplydrop
execute if score %time uhcp_gameTime matches 1200 as @a[scores={uhcp_a_selectedAugment=135}] run clear @s elytra
execute if score %time uhcp_gameTime matches 1200 as @a[scores={uhcp_a_selectedAugment=135}] run setblock 0 250 0 air
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=207}] run effect give @s speed infinite 0
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=214}] run give @s obsidian 14
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=214}] run give @s flint_and_steel 1

# Scuffed version of Relic Master
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 0
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 1
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 36000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 36000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 2
execute if score %time uhcp_gameTime matches 36000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 3
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 4
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 72000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 72000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 5
execute if score %time uhcp_gameTime matches 72000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 84000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 84000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 6
execute if score %time uhcp_gameTime matches 84000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 96000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 96000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 7
execute if score %time uhcp_gameTime matches 96000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0
execute if score %time uhcp_gameTime matches 108000 as @a[scores={uhcp_a_selectedAugment=238}] run loot give @s loot uhcp:relics
execute if score %time uhcp_gameTime matches 108000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s health_boost infinite 8
execute if score %time uhcp_gameTime matches 108000 as @a[scores={uhcp_a_selectedAugment=238}] run effect give @s instant_health 1 0

# Cycle Effects
execute if score %time uhcp_gameTime matches ..3599 as @a[scores={uhcp_a_selectedAugment=101}] run function uhcp:augments/effects/silver/afk/lock

execute if score %time uhcp_gameTime >= %AUG_203 uhcp_gameTime run effect give @a[scores={uhcp_a_selectedAugment=203}] regeneration 5 0
execute if score %time uhcp_gameTime >= %AUG_203 uhcp_gameTime run scoreboard players add %AUG_203 uhcp_gameTime 1200

execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=7}] gold_ingot 1
execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run scoreboard players add %AUG_7 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=15}] apple 1
execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run scoreboard players add %AUG_15 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=27}] potion{Enchantments:[{}],Potion:"minecraft:invisibility"} 1
execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run scoreboard players add %AUG_27 uhcp_gameTime 12000

execute if score %time uhcp_gameTime >= %AUG_107 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=7}] gold_ingot 1
execute if score %time uhcp_gameTime >= %AUG_107 uhcp_gameTime run scoreboard players add %AUG_107 uhcp_gameTime 6000