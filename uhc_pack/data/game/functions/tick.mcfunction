#Uhc Ticking
execute if score stage status matches 1 run kill @e[type=item]

#Players Info book
execute if score stage status matches 1 run execute if score teamjoin status matches 0 run execute as @a run item replace entity @a hotbar.1 with written_book{pages:['["",{"text":"       Team Select:\\n\\n"},{"text":"Commands any player can run at any time:","color":"dark_blue"},{"text":"\\n\\n","color":"black"},{"text":"/trigger ch_toggle","color":"red","clickEvent":{"action":"run_command","value":"/trigger ch_toggle"},"hoverEvent":{"action":"show_text","contents":"Toggles coords hud"}},{"text":"\\n","color":"black"},{"text":"/trigger options","color":"blue","clickEvent":{"action":"run_command","value":"/trigger options"},"hoverEvent":{"action":"show_text","contents":"Click or type to show all game settings"}},{"text":"\\n\\n","color":"black"},{"text":"-------------------\\n   Team Joining: [","color":"black"},{"text":"Off","color":"dark_red"},{"text":"]\\n\\n       ","color":"black"},{"text":"\\u2b1b","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger team set 12"},"hoverEvent":{"action":"show_text","contents":"Join Navy!"}},{"text":"\\u2b1b","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger team set 10"},"hoverEvent":{"action":"show_text","contents":"Join Boom!"}},{"text":"\\u2b1b","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger team set 7"},"hoverEvent":{"action":"show_text","contents":"Join Riptide!"}},{"text":"\\u2b1b","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger team set 9"},"hoverEvent":{"action":"show_text","contents":"Join Danger Danger!"}},{"text":"\\u2b1b","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger team set 6"},"hoverEvent":{"action":"show_text","contents":"Join Celeste!"}},{"text":"\\u2b1b","color":"gold","clickEvent":{"action":"run_command","value":"/trigger team set 4"},"hoverEvent":{"action":"show_text","contents":"Join Pyro!"}},{"text":"\\u2b1b","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger team set 14"},"hoverEvent":{"action":"show_text","contents":"Join Bastion!"}},{"text":"\\n","color":"black"},{"text":"       ","color":"black"},{"text":"\\u2b1b","color":"blue","clickEvent":{"action":"run_command","value":"/trigger team set 2"},"hoverEvent":{"action":"show_text","contents":"Join Ice!"}},{"text":"\\u2b1b","color":"green","clickEvent":{"action":"run_command","value":"/trigger team set 3"},"hoverEvent":{"action":"show_text","contents":"Join Meanie Greenies!"}},{"text":"\\u2b1b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger team set 11"},"hoverEvent":{"action":"show_text","contents":"Join Bling!"}},{"text":"\\u2b1b","color":"red","clickEvent":{"action":"run_command","value":"/trigger team set 1"},"hoverEvent":{"action":"show_text","contents":"Join Crimson!"}},{"text":"\\u2b1b","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger team set 5"},"hoverEvent":{"action":"show_text","contents":"Join Lucky Lipsticks!"}},{"text":"\\u2b1b","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger team set 8"},"hoverEvent":{"action":"show_text","contents":"Join Blitz!"}},{"text":"\\u2b1b","color":"gray","clickEvent":{"action":"run_command","value":"/trigger team set 13"},"hoverEvent":{"action":"show_text","contents":"Join Netherite!"}}]'],title:"Team Select",author:Cosmoguy}
execute if score stage status matches 1 run execute if score teamjoin status matches 1 run execute as @a run item replace entity @a hotbar.1 with written_book{pages:['["",{"text":"       Team Select:\\n\\n"},{"text":"Commands any player can run at any time:","color":"dark_blue"},{"text":"\\n\\n","color":"black"},{"text":"/trigger ch_toggle","color":"red","clickEvent":{"action":"run_command","value":"/trigger ch_toggle"},"hoverEvent":{"action":"show_text","contents":"Toggles coords hud"}},{"text":"\\n","color":"black"},{"text":"/trigger options","color":"blue","clickEvent":{"action":"run_command","value":"/trigger options"},"hoverEvent":{"action":"show_text","contents":"Click or type to show all game settings"}},{"text":"\\n\\n","color":"black"},{"text":"-------------------\\n   Team Joining: [","color":"black"},{"text":"On","color":"dark_green"},{"text":"]\\n\\n       ","color":"black"},{"text":"\\u2b1b","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger team set 12"},"hoverEvent":{"action":"show_text","contents":"Join Navy!"}},{"text":"\\u2b1b","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger team set 10"},"hoverEvent":{"action":"show_text","contents":"Join Boom!"}},{"text":"\\u2b1b","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger team set 7"},"hoverEvent":{"action":"show_text","contents":"Join Riptide!"}},{"text":"\\u2b1b","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger team set 9"},"hoverEvent":{"action":"show_text","contents":"Join Danger Danger!"}},{"text":"\\u2b1b","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger team set 6"},"hoverEvent":{"action":"show_text","contents":"Join Celeste!"}},{"text":"\\u2b1b","color":"gold","clickEvent":{"action":"run_command","value":"/trigger team set 4"},"hoverEvent":{"action":"show_text","contents":"Join Pyro!"}},{"text":"\\u2b1b","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger team set 14"},"hoverEvent":{"action":"show_text","contents":"Join Bastion!"}},{"text":"\\n","color":"black"},{"text":"       ","color":"black"},{"text":"\\u2b1b","color":"blue","clickEvent":{"action":"run_command","value":"/trigger team set 2"},"hoverEvent":{"action":"show_text","contents":"Join Ice!"}},{"text":"\\u2b1b","color":"green","clickEvent":{"action":"run_command","value":"/trigger team set 3"},"hoverEvent":{"action":"show_text","contents":"Join Meanie Greenies!"}},{"text":"\\u2b1b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger team set 11"},"hoverEvent":{"action":"show_text","contents":"Join Bling!"}},{"text":"\\u2b1b","color":"red","clickEvent":{"action":"run_command","value":"/trigger team set 1"},"hoverEvent":{"action":"show_text","contents":"Join Crimson!"}},{"text":"\\u2b1b","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger team set 5"},"hoverEvent":{"action":"show_text","contents":"Join Lucky Lipsticks!"}},{"text":"\\u2b1b","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger team set 8"},"hoverEvent":{"action":"show_text","contents":"Join Blitz!"}},{"text":"\\u2b1b","color":"gray","clickEvent":{"action":"run_command","value":"/trigger team set 13"},"hoverEvent":{"action":"show_text","contents":"Join Netherite!"}}]'],title:"Team Select",author:Cosmoguy}
#Join during game
execute if score stage status matches 2 run gamemode spectator @a[team=]

#Lobby
execute if score stage status matches 1 run effect give @a minecraft:saturation 2 1 true
execute if score stage status matches 1 run effect give @a minecraft:weakness 2 2 true
execute if score stage status matches 1 run effect give @a minecraft:resistance 128 125 true
execute if score stage status matches 1 run effect give @a minecraft:regeneration 128 125 true
execute if score stage status matches 1 run execute as @a[gamemode=adventure,scores={phantom=100}] at @s run scoreboard players set @s options 1
execute if score stage status matches 1 run execute as @a[scores={phantom=180}] at @s run tellraw @s ["",{"text":"To show all game settings ["},{"text":"Click Here","color":"green","clickEvent":{"action":"run_command","value":"/trigger options"}},{"text":"]"}]
execute if score stage status matches 1 run execute as @a[scores={phantom=180}] at @s run tellraw @s ["",{"text":"You can toggle coords at any time by running "},{"text":"/trigger ch_toggle","color":"green","clickEvent":{"action":"run_command","value":"/trigger ch_toggle"}}]
execute if score stage status matches 1 run execute store result score Players setting if entity @e[type=player]
execute if score stage status matches 1 run execute as @p at @s run execute if block ~ ~-2 ~ minecraft:air run effect give @a[gamemode=creative] minecraft:blindness 3 0 true

execute if score stage status matches 2 run gamemode spectator @a[team=] 
scoreboard players enable @a options
execute if score stage status matches 1 run execute if score teamjoin status matches 1 run scoreboard players enable @a team
execute as @a[scores={options=1}] at @s run function game:setting
scoreboard players set @a[scores={options=1..}] options 0

#Main Timers
execute if score stage status matches 2 run scoreboard players remove countdown tick 1
execute if score stage status matches 2 run scoreboard players remove shrinkstart tick 1
execute if score stage status matches 2 run scoreboard players remove day tick 1
execute if score stage status matches 2 run scoreboard players remove nametags tick 1
execute if score stage status matches 2 run scoreboard players add marker tick 1
execute if score stage status matches 1 run scoreboard players add daydice tick 1
execute if score daydice tick matches 25.. run scoreboard players set daydice tick 1

#Starting countdown
execute if score countdown tick matches 100 run title @a title {"text":"5","color":"blue"}
execute if score countdown tick matches 100 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1
execute if score countdown tick matches 80 run title @a title {"text":"4","color":"green"}
execute if score countdown tick matches 80 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1
execute if score countdown tick matches 60 run title @a title {"text":"3","color":"yellow"}
execute if score countdown tick matches 60 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1
execute if score countdown tick matches 40 run title @a title {"text":"2","color":"gold"}
execute if score countdown tick matches 40 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1
execute if score countdown tick matches 20 run title @a title {"text":"1","color":"red"}
execute if score countdown tick matches 20 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1
execute if score countdown tick matches 0 run title @a title {"text":"Go Go Go!!","color":"green"}
execute if score countdown tick matches 0 run title @a subtitle {"text":"Invincible For 1 Minute!","color":"yellow"}

execute if score countdown tick matches 0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 2 1
execute if score countdown tick matches 0 run function game:start

#Reset Timers
execute if score marker tick matches 23980 run scoreboard players add marker status 20
execute if score marker tick matches 23999 run worldborder damage buffer 1
execute if score marker tick matches 24000.. run scoreboard players set marker tick 0

#Border
execute if score shrinkstart tick matches -24000 run function game:events/border_stopped
execute if score shrinkstart tick matches -48000 run function game:events/border_stopped
execute if score shrinkstart tick matches -72000 run function game:events/border_stopped
execute if score shrinkstart tick matches -96000 run function game:events/border_stopped
execute if score shrinkstart tick matches -120000 run function game:events/border_stopped
execute if score shrinkstart tick matches -144000 run function game:events/border_stopped
execute if score shrinkstart tick matches -168000 run function game:events/border_stopped
execute if score shrinkstart tick matches -192000 run function game:events/border_stopped
execute if score shrinkstart tick matches -216000 run function game:events/border_stopped
execute if score shrinkstart tick matches -240000 run function game:events/border_stopped
execute if score shrinkstart tick matches -264000 run function game:events/border_stopped
execute if score shrinkstart tick matches -288000 run function game:events/border_stopped

execute if score BorderShrinkTime setting matches 20 run execute if score shrinkstart tick matches -24011..-24000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 40 run execute if score shrinkstart tick matches -48011..-48000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 60 run execute if score shrinkstart tick matches -72011..-72000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 80 run execute if score shrinkstart tick matches -96011..-96000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 100 run execute if score shrinkstart tick matches -120011..-120000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 120 run execute if score shrinkstart tick matches -144011..-144000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 140 run execute if score shrinkstart tick matches -168011..-168000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 160 run execute if score shrinkstart tick matches -192011..-192000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 180 run execute if score shrinkstart tick matches -216011..-216000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 200 run execute if score shrinkstart tick matches -240011..-240000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 220 run execute if score shrinkstart tick matches -264011..-264000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1
execute if score BorderShrinkTime setting matches 240 run execute if score shrinkstart tick matches -288011..-288000 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1000000 2 1

execute if score shrinkstart tick matches 0 run function game:events/shrink

#Spawning
execute if score stage status matches 1 run execute positioned 0 0 0 run tp @a[distance=0..250] 0 301 0
execute if score stage status matches 1 run execute positioned 0 301 0 run gamemode adventure @a[gamemode=!creative]

#Speed Uhc etc
execute if score night status matches 1 run effect give @a[gamemode=survival] minecraft:night_vision 15 0 true
execute if score speed status matches 1 run effect give @a minecraft:speed 15 0 true


#Stew options
execute if score stew status matches 0 run effect clear @a[scores={stew=1}] minecraft:regeneration
scoreboard players set @a[scores={stew=1..}] stew 0

#Team Trigger
execute if score TeamJoining status matches 1 run execute if score TeamGame status matches 1 run scoreboard players enable @a team

#Disable nether travel
execute if score nether status matches 0 run execute as @a at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:nether_portal

#Death
execute if score respawn status matches 0 run gamemode spectator @a[scores={death=1}]
execute if score respawn status matches 0 run execute if score stage status matches 2 run team join spectator @a[gamemode=spectator]
execute as @a[scores={death=1}] run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1000000 2 1
effect give @a[gamemode=spectator] minecraft:night_vision 30 0 true
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 1000 run execute as @a at @s run spreadplayers 0 0 10 400 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 1500 run execute as @a at @s run spreadplayers 0 0 10 700 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 2000 run execute as @a at @s run spreadplayers 0 0 10 900 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 2500 run execute as @a at @s run spreadplayers 0 0 10 1200 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 3000 run execute as @a at @s run spreadplayers 0 0 10 1400 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 4000 run execute as @a at @s run spreadplayers 0 0 10 1900 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 5000 run execute as @a at @s run spreadplayers 0 0 10 2499 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 7000 run execute as @a at @s run spreadplayers 0 0 10 3400 false @s[scores={death=1}]
execute if score respawn status matches 1 run execute if score TotalWorldSize setting matches 10000 run execute as @a at @s run spreadplayers 0 0 10 4900 false @s[scores={death=1}]

execute if score respawn status matches 1 run execute if score hp status matches 5 run execute as @a[scores={timedeath=0..20}] at @s run attribute @s minecraft:generic.max_health base set 10
execute if score respawn status matches 1 run execute if score hp status matches 10 run execute as @a[scores={timedeath=0..20}] at @s run attribute @s minecraft:generic.max_health base set 20
execute if score respawn status matches 1 run execute if score hp status matches 20 run execute as @a[scores={timedeath=0..20}] at @s run attribute @s minecraft:generic.max_health base set 40
execute if score respawn status matches 1 run effect give @a[scores={timedeath=1..20}] minecraft:regeneration 5 125 false
execute if score respawn status matches 1 run effect give @a[scores={timedeath=1..20}] minecraft:resistance 60 125 false

scoreboard players set @a[scores={death=1..}] death 0

#Team join detection
execute if score teamgame status matches 1 run execute as @p[scores={team=1}] at @s run function game:teams/crimson
execute if score teamgame status matches 1 run execute as @p[scores={team=2}] at @s run function game:teams/ice
execute if score teamgame status matches 1 run execute as @p[scores={team=3}] at @s run function game:teams/meaniegreeny
execute if score teamgame status matches 1 run execute as @p[scores={team=4}] at @s run function game:teams/fire
execute if score teamgame status matches 1 run execute as @p[scores={team=5}] at @s run function game:teams/barbie
execute if score teamgame status matches 1 run execute as @p[scores={team=6}] at @s run function game:teams/celeste
execute if score teamgame status matches 1 run execute as @p[scores={team=7}] at @s run function game:teams/riptide
execute if score teamgame status matches 1 run execute as @p[scores={team=8}] at @s run function game:teams/blitz
execute if score teamgame status matches 1 run execute as @p[scores={team=9}] at @s run function game:teams/dangerdanger
execute if score teamgame status matches 1 run execute as @p[scores={team=10}] at @s run function game:teams/boom
execute if score teamgame status matches 1 run execute as @p[scores={team=11}] at @s run function game:teams/bling
execute if score teamgame status matches 1 run execute as @p[scores={team=12}] at @s run function game:teams/navy
execute if score teamgame status matches 1 run execute as @p[scores={team=13}] at @s run function game:teams/netherite
execute if score teamgame status matches 1 run execute as @p[scores={team=14}] at @s run function game:teams/bastion
execute if score teamgame status matches 0 run execute as @p at @s run tellraw @s[scores={team=1..14}] ["",{"text":"["},{"text":"Info","color":"yellow"},{"text":"] "},{"text":"Team game is currently disabled","color":"red"}]
execute if score teamgame status matches 0 run execute as @p at @s run playsound minecraft:block.note_block.bass master @s[scores={team=1..14}] ~ ~ ~ 1000000 1 1
scoreboard players set @a[scores={team=1..}] team 0

#Ores
execute if score autocook status matches 1 run execute as @p[scores={iore=1}] at @s run xp add @s 2 points
execute if score autocook status matches 1 run execute as @p[scores={gore=1}] at @s run xp add @s 2 points
execute if score autocook status matches 1 run execute as @p[scores={core=1}] at @s run xp add @s 1 points
execute if score autocook status matches 1 run execute as @p[scores={debris=1}] at @s run xp add @s 4 points
execute if score autocook status matches 1 run execute as @p[scores={diore=1}] at @s run xp add @s 2 points
execute if score autocook status matches 1 run execute as @p[scores={dgore=1}] at @s run xp add @s 2 points
execute if score autocook status matches 1 run execute as @p[scores={dcore=1}] at @s run xp add @s 1 points
execute if score autocook status matches 1 run execute as @p[scores={rawcopper=1}] at @s run xp add @s 9 points
execute if score autocook status matches 1 run execute as @p[scores={rawiron=1}] at @s run xp add @s 18 points
execute if score autocook status matches 1 run execute as @p[scores={rawgold=1}] at @s run xp add @s 18 points

execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={debris=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={gore=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={iore=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={core=1}] ~ ~ ~ 1000000 2 1 

execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={dcore=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={dgore=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={diore=1}] ~ ~ ~ 1000000 2 1 

execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={rawcopper=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={rawiron=1}] ~ ~ ~ 1000000 2 1 
execute if score autocook status matches 1 run playsound minecraft:block.note_block.chime master @a[scores={rawgold=1}] ~ ~ ~ 1000000 2 1 

scoreboard players set @a[scores={debris=1..}] debris 0
scoreboard players set @a[scores={iore=1..}] iore 0
scoreboard players set @a[scores={gore=1..}] gore 0
scoreboard players set @a[scores={core=1..}] core 0

scoreboard players set @a[scores={diore=1..}] diore 0
scoreboard players set @a[scores={dgore=1..}] dgore 0
scoreboard players set @a[scores={dcore=1..}] dcore 0

scoreboard players set @a[scores={rawcopper=1..}] rawcopper 0
scoreboard players set @a[scores={rawiron=1..}] rawiron 0
scoreboard players set @a[scores={rawgold=1..}] rawgold 0

#Health
execute if score stage status matches 1 run execute if score hp status matches 5 run execute as @a at @s run attribute @s minecraft:generic.max_health base set 10
execute if score stage status matches 1 run execute if score hp status matches 10 run execute as @a at @s run attribute @s minecraft:generic.max_health base set 20
execute if score stage status matches 1 run execute if score hp status matches 20 run execute as @a at @s run attribute @s minecraft:generic.max_health base set 40

#Events
execute if score nametags tick matches 0 run execute if score nameplates status matches 0 run function game:events/showtags
execute if score day tick matches 0 run function game:events/day
execute if score stage status matches 2 run execute if score marker tick matches 23990 run tellraw @a ["",{"text":"[Marker]","color":"green"},{"text":" ","color":"red"},{"score":{"name":"marker","objective":"status"},"color":"yellow"},{"text":"\u0020Minutes","color":"yellow"}]
execute if score stage status matches 2 run execute if score marker tick matches 23990..23991 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000000 1 1






























