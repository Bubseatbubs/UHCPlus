function uhcp:settings/pages/border/1
execute if score @s uhcp_settings matches 100..109 run function uhcp:settings/border/size
execute if score @s uhcp_settings matches 110..117 run function uhcp:settings/border/countdown
execute if score @s uhcp_settings matches 118..125 run function uhcp:settings/border/shrink_speed