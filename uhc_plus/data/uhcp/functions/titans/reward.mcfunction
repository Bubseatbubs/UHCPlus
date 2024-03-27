playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.01 100 normal
function uhcp:titans/reset_bossbar
loot give @s loot uhcp:titans/loot
loot give @s loot uhcp:titans/loot
xp add @s 1500 points