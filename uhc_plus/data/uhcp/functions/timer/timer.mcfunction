# Rewrite all of this at some point - Aeodine

scoreboard players remove @a[scores={uhcp_timer=0..2147483647}] uhcp_timer 1

# One Time Effects
# Some of these need to be implemented more carefully. - Aeodine (Leaving the game at the right time is enough to evade some effects.)
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=143}] run function uhcp:augments/effects/silver/delayedprotection
execute if score %time uhcp_game_time matches 9600 as @a[scores={uhcp_augment=18}] run function uhcp:augments/effects/gold/latelooter/haste
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=145}] run function uhcp:augments/effects/silver/secondwind
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=35}] run function uhcp:augments/effects/gold/coppercollector/convert
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=49}] run function uhcp:augments/effects/gold/fossilfuel/init
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=27}] run function uhcp:augments/effects/gold/watertowine/init
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=50}] run function uhcp:augments/effects/gold/plannedeconomy/give
execute if score %time uhcp_game_time matches 24000 as @a[scores={uhcp_augment=42}] run function uhcp:augments/effects/gold/diamondsintherough/convert
execute if score %time uhcp_game_time matches 3600 as @a[scores={uhcp_augment=101}] run function uhcp:augments/effects/silver/afk/freedom
execute if score %time uhcp_game_time matches 3600 as @a[scores={uhcp_augment=108}] run function uhcp:augments/effects/silver/drunkenstupor/cure
execute if score %time uhcp_game_time matches 24000 as @a[scores={uhcp_augment=120}] run function uhcp:augments/effects/silver/onthehunt
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=130}] run function uhcp:augments/effects/silver/supplydrop
execute if score %time uhcp_game_time matches 24000 as @a[scores={uhcp_augment=214}] run function uhcp:augments/effects/prismatic/netherborn/portal
execute if score %time uhcp_game_time matches 24000 run effect clear @a[scores={uhcp_augment=217}] minecraft:glowing
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=43}] at @s run function uhcp:augments/effects/gold/mansbestfriend/giveloot
execute if score %time uhcp_game_time matches 42000 as @a[scores={uhcp_augment=36}] at @s run function uhcp:augments/effects/gold/redstoneritual/init
execute if score %time uhcp_game_time matches 1200 run clear @a[scores={uhcp_augment=135}] minecraft:elytra[minecraft:custom_data~{struct_scout:1b}]
execute if score %time uhcp_game_time matches 18000 as @a[scores={uhcp_augment=150}] run function uhcp:augments/effects/silver/cramsession

# Notifications
execute if score %time uhcp_game_time matches 16800 as @a[scores={uhcp_augment=115}] run tellraw @s {"text":"Your Iron Will Resistance will wear off in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 16800 as @a[scores={uhcp_augment=115}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=35}] run tellraw @s {"text":"Copper will convert to Gold in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=35}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=35}] run tellraw @s {"text":"Copper will convert to Gold in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=35}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=36}] run tellraw @s {"text":"Redstone will convert to Absorption Hearts in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=36}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=36}] run tellraw @s {"text":"Redstone will convert to Absorption Hearts in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=36}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=49}] run tellraw @s {"text":"Bones will convert to Speed in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=49}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=49}] run tellraw @s {"text":"Bones will convert to Speed in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=49}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=27}] run tellraw @s {"text":"Water Bottles will convert to Potions in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 36000 as @a[scores={uhcp_augment=27}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=27}] run tellraw @s {"text":"Water Bottles will convert to Potions in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 40800 as @a[scores={uhcp_augment=27}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 18000 as @a[scores={uhcp_augment=42}] run tellraw @s {"text":"Coal will convert to Diamonds in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 18000 as @a[scores={uhcp_augment=42}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 22800 as @a[scores={uhcp_augment=42}] run tellraw @s {"text":"Coal will convert to Diamonds in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 22800 as @a[scores={uhcp_augment=42}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 30000 as @a[scores={uhcp_augment=43}] run tellraw @s {"text":"All your wolves will fetch loot in 5 minutes!","color":"red"}
execute if score %time uhcp_game_time matches 30000 as @a[scores={uhcp_augment=43}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score %time uhcp_game_time matches 34800 as @a[scores={uhcp_augment=43}] run tellraw @s {"text":"All your wolves will fetch loot in 1 minute!","color":"red"}
execute if score %time uhcp_game_time matches 34800 as @a[scores={uhcp_augment=43}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Cycle Effects
execute if score %time uhcp_game_time matches ..3599 as @a[scores={uhcp_augment=101}] run function uhcp:augments/effects/silver/afk/lock

execute if score %time uhcp_game_time >= %AUG_7 uhcp_game_time run give @a[scores={uhcp_augment=7}] gold_ingot 1
execute if score %time uhcp_game_time >= %AUG_7 uhcp_game_time run scoreboard players add %AUG_7 uhcp_game_time 2400

execute if score %time uhcp_game_time >= %AUG_15 uhcp_game_time run give @a[scores={uhcp_augment=15}] apple 1
execute if score %time uhcp_game_time >= %AUG_15 uhcp_game_time run scoreboard players add %AUG_15 uhcp_game_time 2400

execute if score %time uhcp_game_time >= %AUG_27 uhcp_game_time run give @a[scores={uhcp_augment=27}] minecraft:potion[minecraft:enchantments={levels:{"minecraft:protection":1},show_in_tooltip:false},minecraft:potion_contents={potion:"minecraft:long_invisibility"}] 1
execute if score %time uhcp_game_time >= %AUG_27 uhcp_game_time run give @a[scores={uhcp_augment=27}] minecraft:potion[minecraft:enchantments={levels:{"minecraft:protection":1},show_in_tooltip:false},minecraft:potion_contents={potion:"minecraft:swiftness"}] 1
execute if score %time uhcp_game_time >= %AUG_27 uhcp_game_time run scoreboard players add %AUG_27 uhcp_game_time 12000

execute if score %time uhcp_game_time >= %AUG_107 uhcp_game_time run give @a[scores={uhcp_augment=7}] gold_ingot 1
execute if score %time uhcp_game_time >= %AUG_107 uhcp_game_time run scoreboard players add %AUG_107 uhcp_game_time 4800

execute if score %time uhcp_game_time >= %AUG_138 uhcp_game_time as @a[scores={uhcp_augment=138}] at @s run function uhcp:augments/effects/silver/crazycatlady/count
execute if score %time uhcp_game_time >= %AUG_138 uhcp_game_time run scoreboard players add %AUG_138 uhcp_game_time 1200

execute if score %time uhcp_game_time >= %AUG_203 uhcp_game_time run effect give @a[scores={uhcp_augment=203}] regeneration 4 1
execute if score %time uhcp_game_time >= %AUG_203 uhcp_game_time run scoreboard players add %AUG_203 uhcp_game_time 1200

execute if score %time uhcp_game_time >= %AUG_238 uhcp_game_time as @a[scores={uhcp_augment=238}] at @s run function uhcp:augments/effects/prismatic/relicmaster/update
execute if score %time uhcp_game_time >= %AUG_238 uhcp_game_time run scoreboard players add %AUG_238 uhcp_game_time 24000

execute if score %time uhcp_game_time >= %AUG_244 uhcp_game_time as @a[scores={uhcp_augment=244}] at @s run function uhcp:augments/effects/prismatic/hedgefund/init
execute if score %time uhcp_game_time >= %AUG_244 uhcp_game_time run scoreboard players add %AUG_244 uhcp_game_time 3600

execute as @a[scores={uhcp_augment=220}] if score %time uhcp_game_time >= @s uhcp_aug_cd_time at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade

# Titans
execute if score %time uhcp_game_time matches 6000 in minecraft:overworld positioned 0 64 0 run function uhcp:titans/spawn/init
execute if score %time uhcp_game_time matches 24000 in minecraft:overworld run function uhcp:titans/spawn/summon
execute if score %time uhcp_game_time matches 42000 in minecraft:overworld run function uhcp:reset/titans

# Rain random lab UHC player balance addons
# Temporarily disabled for Set 2 Playtests
#execute if score %time uhcp_game_time matches 2700 run function rain:tags
