scoreboard players set %containers uhcp_settings 0
fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air replace #uhcp:containers destroy
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace #uhcp:breakable
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:reinforced_deepslate replace #uhcp:breakable
setblock ~ ~ ~ minecraft:chest
scoreboard players set %containers uhcp_settings 1

loot insert ~ ~ ~ loot uhcp:titans/loot
function uhcp:titans/loot/identify
execute as @a[scores={uhcp_augment=208},distance=..16,gamemode=survival] run function uhcp:titans/loot/spinal_fluid

particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
playsound minecraft:ui.toast.challenge_complete master @a[distance=..12] ~ ~ ~ 1 1 1
playsound minecraft:block.trial_spawner.eject_item master @a[distance=..16] ~ ~ ~ 1 1 0.75

kill @s
