# Select Hermes patron
scoreboard players set @s uhcp_aug_patron 6
tellraw @a [{"text":"Hermes","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
