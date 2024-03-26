playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
function uhcp:titans/reset_bossbar
loot give @s loot uhcp:titans/loot
loot give @s loot uhcp:titans/loot
xp add @s 1500 points