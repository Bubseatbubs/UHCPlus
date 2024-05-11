# Select Demeter patron
scoreboard players set @s uhcp_aug_patron 4
tellraw @a [{"text":"Demeter","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1 1
