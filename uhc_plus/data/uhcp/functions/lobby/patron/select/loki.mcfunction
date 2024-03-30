# Select Loki patron
scoreboard players set @s uhcp_aug_patron 7
tellraw @a [{"text":"Loki","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound block.piston.extend master @s ~ ~ ~ 1 1 1
