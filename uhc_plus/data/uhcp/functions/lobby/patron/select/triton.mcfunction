# Select Triton patron
scoreboard players set @s uhcp_aug_patron 9
tellraw @a [{"text":"Triton","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 1 1 1
