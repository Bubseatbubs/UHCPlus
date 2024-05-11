# Select Apollo patron
scoreboard players set @s uhcp_aug_patron 1
tellraw @a [{"text":"Apollo","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 1 1 1
