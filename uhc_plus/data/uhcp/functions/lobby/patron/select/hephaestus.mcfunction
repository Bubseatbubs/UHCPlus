# Select Hephaestus patron
scoreboard players set @s uhcp_aug_patron 5
tellraw @a [{"text":"Hephaestus","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound block.anvil.place master @s ~ ~ ~ 1 1 1
