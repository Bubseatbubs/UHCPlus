effect clear @e[distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] fire_resistance
execute as @e[distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] run tag @s add SSIEGE_hit_by_Infernus_Blessing
data merge entity @e[distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] {Fire:200}

advancement revoke @s only ssiege:titans/player_hit_entity_with_infernus_blessing