# Select Hera patron
scoreboard players set @s uhcp_aug_patron 8
tellraw @a [{"text":"Hera","color":"gold"},{"text":" became ","color":"gray"},{"selector":"@s","color":"blue"},{"text":"'s","color":"blue"},{"text":" Patron God!","color":"gold"}]
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
