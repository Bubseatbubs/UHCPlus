
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] as @e[distance=..2.5,type=!#uhcp:inanimate_mobs] run damage @s 6 fireworks
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run particle dripping_honey ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run particle entity_effect ~ ~ ~ 2.5 2.5 2.5 0.1 500 normal
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run particle explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run playsound entity.bee.death master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run playsound entity.bee.hurt master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run playsound block.beehive.enter master @a[distance=..24.5] ~ ~ ~ 1 1 0.25
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact master @a[distance=..24.5] ~ ~ ~ 1 1.5 0.25
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon
execute at @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon

execute at @s as @e[tag=UHCP_Bee,tag=UHCP_New,sort=nearest,limit=5] run scoreboard players operation @s uhcp_id = @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] uhcp_id
tag @e remove UHCP_New
kill @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1]