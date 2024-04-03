
execute on passengers at @s as @e[distance=..2.5,predicate=uhcp:targetable] unless score @s uhcp_team = @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_team run damage @s 4 fireworks
particle dripping_honey ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
particle effect ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
particle explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
playsound entity.bee.death master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
playsound entity.bee.hurt master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
playsound block.beehive.enter master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 honey_block replace #uhcp:titan_can_break
function uhcp:augments/effects/bees/summon
function uhcp:augments/effects/bees/summon
function uhcp:augments/effects/bees/summon
function uhcp:augments/effects/bees/summon
function uhcp:augments/effects/bees/summon

execute at @s as @e[tag=UHCP_Bee,tag=UHCP_New,sort=nearest,limit=5] run scoreboard players operation @s uhcp_id = @e[tag=UHCP_BuzzburstDisplay,sort=nearest,limit=1] uhcp_id
tag @e remove UHCP_New

execute on passengers run kill @s
kill @s