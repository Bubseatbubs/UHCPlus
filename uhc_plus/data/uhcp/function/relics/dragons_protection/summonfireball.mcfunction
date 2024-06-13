summon minecraft:fireball ~ ~10 ~ {ExplosionPower:2b,power:[0.0,-0.16,0.0],Item:{id:"minecraft:end_crystal"}}
execute at @s positioned ~ ~10 ~ run playsound minecraft:entity.ender_dragon.shoot master @a[distance=..50] 1 1 0.8
