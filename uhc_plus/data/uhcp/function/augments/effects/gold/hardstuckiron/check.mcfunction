tellraw @s {"text":"You can't wear Diamond or Netherite Armor!","color":"dark_red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute if items entity @s armor.head #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/head
execute if items entity @s armor.chest #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/chest
execute if items entity @s armor.legs #uhcp:hardstuck_iron_banned run return run function uhcp:augments/effects/gold/hardstuckiron/legs
execute if items entity @s armor.feet #uhcp:hardstuck_iron_banned run function uhcp:augments/effects/gold/hardstuckiron/feet
