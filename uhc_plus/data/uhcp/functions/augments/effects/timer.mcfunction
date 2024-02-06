scoreboard players remove @a[scores={uhcp_a_timer=0..2147483647}] uhcp_a_timer 1

# One Time Effects
execute if score %time uhcp_gameTime matches 16800 as @a[scores={uhcp_a_selectedAugment=115}] run tellraw @s {"text":"Your Iron Will Resistance will wear off in 1 minute!","color":"red"}
execute if score %time uhcp_gameTime matches 54000 as @a[scores={uhcp_a_selectedAugment=5}] run function uhcp:augments/effects/gold/delayedprotection
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=18}] run function uhcp:augments/effects/gold/latelooter/haste
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=25}] run function uhcp:augments/effects/gold/secondwind
execute if score %time uhcp_gameTime matches 54000 as @a[scores={uhcp_a_selectedAugment=35}] run tellraw @s {"text":"Copper will convert to Gold in 5 minutes!","color":"red"}
execute if score %time uhcp_gameTime matches 58800 as @a[scores={uhcp_a_selectedAugment=35}] run tellraw @s {"text":"Copper will convert to Gold in 1 minute!","color":"red"}
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=35}] run function uhcp:augments/effects/gold/coppercollector
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=35}] run function uhcp:augments/effects/gold/coppercollector_block
execute if score %time uhcp_gameTime matches 3600 as @a[scores={uhcp_a_selectedAugment=101}] run function uhcp:augments/effects/silver/afk/freedom
execute if score %time uhcp_gameTime matches 3600 as @a[scores={uhcp_a_selectedAugment=108}] run function uhcp:augments/effects/silver/drunkenstupor/cure
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=120}] run function uhcp:augments/effects/silver/onthehunt
execute if score %time uhcp_gameTime matches 36000 as @a[scores={uhcp_a_selectedAugment=130}] run function uhcp:augments/effects/silver/supplydrop
execute if score %time uhcp_gameTime matches 1200 as @a[scores={uhcp_a_selectedAugment=135}] run clear @s elytra
execute if score %time uhcp_gameTime matches 1200 as @a[scores={uhcp_a_selectedAugment=135}] run setblock 0 250 0 air
execute if score %time uhcp_gameTime matches 12000 as @a[scores={uhcp_a_selectedAugment=207}] run effect give @s speed infinite 0
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=214}] run give @s obsidian 14
execute if score %time uhcp_gameTime matches 24000 as @a[scores={uhcp_a_selectedAugment=214}] run give @s flint_and_steel 1

# Cycle Effects
execute if score %time uhcp_gameTime matches ..3599 as @a[scores={uhcp_a_selectedAugment=101}] run function uhcp:augments/effects/silver/afk/lock

execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=7}] gold_ingot 1
execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run scoreboard players add %AUG_7 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=15}] apple 1
execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run scoreboard players add %AUG_15 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=27}] potion{Enchantments:[{}],Potion:"minecraft:long_invisibility"} 1
execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=27}] potion{Enchantments:[{}],Potion:"minecraft:swiftness"} 1
execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run scoreboard players add %AUG_27 uhcp_gameTime 12000

execute if score %time uhcp_gameTime >= %AUG_107 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=7}] gold_ingot 1
execute if score %time uhcp_gameTime >= %AUG_107 uhcp_gameTime run scoreboard players add %AUG_107 uhcp_gameTime 6000

execute if score %time uhcp_gameTime >= %AUG_203 uhcp_gameTime run effect give @a[scores={uhcp_a_selectedAugment=203}] regeneration 5 0
execute if score %time uhcp_gameTime >= %AUG_203 uhcp_gameTime run scoreboard players add %AUG_203 uhcp_gameTime 1200

execute if score %time uhcp_gameTime >= %AUG_238 uhcp_gameTime as @a[scores={uhcp_a_selectedAugment=238}] at @s run function uhcp:augments/effects/prismatic/relicmaster/update
execute if score %time uhcp_gameTime >= %AUG_238 uhcp_gameTime run scoreboard players add %AUG_238 uhcp_gameTime 12000