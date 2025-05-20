# Gold augments
execute if score @s uhcp_augment matches 7 run return run function uhcp:augments/effects/gold/dripeconomyii/give
execute if score @s uhcp_augment matches 15 run return run function uhcp:augments/effects/gold/johnnyappleseed/give
execute if score @s uhcp_augment matches 18 run return run function uhcp:augments/effects/gold/latelooter/haste
execute if score @s uhcp_augment matches 27 run return run function uhcp:augments/effects/gold/watertowine/init
execute if score @s uhcp_augment matches 35 run return run function uhcp:augments/effects/gold/coppercollector/convert
execute at @s[scores={uhcp_augment=36}] run return run function uhcp:augments/effects/gold/redstoneritual/init
execute at @s[scores={uhcp_augment=43}] run return run function uhcp:augments/effects/gold/mansbestfriend/giveloot
execute if score @s uhcp_augment matches 49 run return run function uhcp:augments/effects/gold/fossilfuel/init
execute if score @s uhcp_augment matches 50 run function uhcp:augments/effects/gold/plannedeconomy/give
