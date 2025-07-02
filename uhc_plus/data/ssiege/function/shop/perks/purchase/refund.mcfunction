$tellraw @s ["",{"text":"You don't have enough ","color":"dark_red"},{"text":"Diamonds","color":"aqua"},{"text":" for that ","color":"dark_red"},{"text":"Perk","color":"yellow"},{"text":" (need $(cost)).","color":"dark_red"}]
$give @s diamond $(refund)
return 0