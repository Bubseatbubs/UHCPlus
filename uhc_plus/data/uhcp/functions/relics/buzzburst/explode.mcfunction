
execute on passengers at @s as @e[distance=..2.5,predicate=uhcp:targetable] unless score @s uhcp_team = @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_team run damage @s 4 minecraft:fireworks
particle minecraft:dripping_honey ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
particle minecraft:effect ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
playsound minecraft:entity.bee.death master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
playsound minecraft:entity.bee.hurt master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
execute if score %game uhcp_initStatus matches 1 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:honey_block replace #uhcp:visible_breakable
function uhcp:entity/bees/summon
function uhcp:entity/bees/summon
function uhcp:entity/bees/summon
function uhcp:entity/bees/summon
function uhcp:entity/bees/summon
execute if entity @s[tag=UHCP_SpawnBeeKnight] run function uhcp:relics/buzzburst/summon_knight

execute at @s as @e[tag=UHCP_Bee,tag=UHCP_New,sort=nearest,limit=6] run scoreboard players operation @s uhcp_id = @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_id
tag @e remove UHCP_New

execute on passengers run kill @s
kill @s