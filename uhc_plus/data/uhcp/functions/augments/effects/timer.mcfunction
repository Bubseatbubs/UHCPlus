# One Time Effects
execute if score %time uhcp_gameTime matches 60000 as @a[scores={uhcp_a_selectedAugment=5}] run function uhcp:augments/effects/gold/delayedprotection
execute if score %time uhcp_gameTime matches 48000 as @a[scores={uhcp_a_selectedAugment=25}] run function uhcp:augments/effects/gold/secondwind

# Cycle Effects
execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=7}] gold_ingot 1
execute if score %time uhcp_gameTime >= %AUG_7 uhcp_gameTime run scoreboard players add %AUG_7 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=15}] apple 1
execute if score %time uhcp_gameTime >= %AUG_15 uhcp_gameTime run scoreboard players add %AUG_15 uhcp_gameTime 2400

execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run give @a[scores={uhcp_a_selectedAugment=27}] potion{Enchantments:[{}],Potion:"minecraft:invisibility"} 1
execute if score %time uhcp_gameTime >= %AUG_27 uhcp_gameTime run scoreboard players add %AUG_27 uhcp_gameTime 12000