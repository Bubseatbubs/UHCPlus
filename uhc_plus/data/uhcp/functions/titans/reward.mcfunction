playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.01 100 normal
loot give @s loot uhcp:titans/loot
loot give @s loot uhcp:titans/loot
execute if score @s uhcp_augment matches 208 run loot give @s loot uhcp:consumables/titan_spinal_fluid
xp add @s 1500 points