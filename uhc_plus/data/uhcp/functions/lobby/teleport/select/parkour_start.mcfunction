# Select Artemis patron
scoreboard players set @s uhcp_aug_patron 2
tellraw @a [{"text":"Artemis","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound entity.zombie.death master @s ~ ~ ~ 1 1 1
