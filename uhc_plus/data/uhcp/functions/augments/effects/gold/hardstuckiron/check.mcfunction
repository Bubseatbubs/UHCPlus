advancement revoke @s only uhcp:augments/hardstuck_iron
tellraw @s {"text":"You can't wear Diamond or Netherite Armor!","color":"dark_red"}
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if items entity @s armor.head #uhcp:hardstuck_iron_banned run return run function uhcp:entity/remove_armor/head
execute if items entity @s armor.chest #uhcp:hardstuck_iron_banned run return run function uhcp:entity/remove_armor/chest
execute if items entity @s armor.legs #uhcp:hardstuck_iron_banned run return run function uhcp:entity/remove_armor/legs
execute if items entity @s armor.feet #uhcp:hardstuck_iron_banned run return run function uhcp:entity/remove_armor/feet