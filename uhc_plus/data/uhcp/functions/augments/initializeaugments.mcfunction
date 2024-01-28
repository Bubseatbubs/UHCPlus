##
# Gives player the augment they selected
##

# Silver Augments
execute if score @s uhcp_a_selectedAugment matches 100 run function uhcp:augments/effects/silver/shoma
execute if score @s uhcp_a_selectedAugment matches 102 run function uhcp:augments/effects/silver/blacksmith
execute if score @s uhcp_a_selectedAugment matches 103 run function uhcp:augments/effects/silver/bucketlist
execute if score @s uhcp_a_selectedAugment matches 104 run function uhcp:augments/effects/silver/cramsession
execute if score @s uhcp_a_selectedAugment matches 105 run function uhcp:augments/effects/silver/creepercosplay
execute if score @s uhcp_a_selectedAugment matches 106 run function uhcp:augments/effects/silver/doublecross
execute if score @s uhcp_a_selectedAugment matches 109 run function uhcp:augments/effects/silver/emptyhearted
execute if score @s uhcp_a_selectedAugment matches 110 run function uhcp:augments/effects/silver/extraenchanting
execute if score @s uhcp_a_selectedAugment matches 111 run function uhcp:augments/effects/silver/gapplegapi
execute if score @s uhcp_a_selectedAugment matches 113 run function uhcp:augments/effects/silver/heartymeal
execute if score @s uhcp_a_selectedAugment matches 114 run function uhcp:augments/effects/silver/intotheminesi
execute if score @s uhcp_a_selectedAugment matches 115 run function uhcp:augments/effects/silver/ironwill
execute if score @s uhcp_a_selectedAugment matches 116 run function uhcp:augments/effects/silver/ladderwarrior
execute if score @s uhcp_a_selectedAugment matches 118 run function uhcp:augments/effects/silver/mansbestfriend
execute if score @s uhcp_a_selectedAugment matches 119 run function uhcp:augments/effects/silver/monsterhunter
execute if score @s uhcp_a_selectedAugment matches 122 run function uhcp:augments/effects/silver/rattunneler
execute if score @s uhcp_a_selectedAugment matches 123 run function uhcp:augments/effects/silver/saddleup
execute if score @s uhcp_a_selectedAugment matches 124 run function uhcp:augments/effects/silver/shieldsup
execute if score @s uhcp_a_selectedAugment matches 125 run function uhcp:augments/effects/silver/sneaky
execute if score @s uhcp_a_selectedAugment matches 126 run function uhcp:augments/effects/silver/speedystart
execute if score @s uhcp_a_selectedAugment matches 127 run function uhcp:augments/effects/silver/starterkiti
execute if score @s uhcp_a_selectedAugment matches 128 run function uhcp:augments/effects/silver/stickysituation
execute if score @s uhcp_a_selectedAugment matches 129 run function uhcp:augments/effects/silver/storagesolution
execute if score @s uhcp_a_selectedAugment matches 131 run function uhcp:augments/effects/silver/taequalsta
execute if score @s uhcp_a_selectedAugment matches 132 run function uhcp:augments/effects/silver/takeaim
execute if score @s uhcp_a_selectedAugment matches 133 run function uhcp:augments/effects/silver/trapenthusiast

# Gold Augments
execute if score @s uhcp_a_selectedAugment matches 0 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Bee Keeper","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 1 run function uhcp:augments/effects/gold/birdsofafeather
execute if score @s uhcp_a_selectedAugment matches 2 run function uhcp:augments/effects/gold/blooddiamonds
execute if score @s uhcp_a_selectedAugment matches 3 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Bloodthirsty","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 4 run function uhcp:augments/effects/gold/cowboycosplay
execute if score @s uhcp_a_selectedAugment matches 5 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Delayed Protection","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 7 run function uhcp:augments/effects/gold/dripeconomyii
execute if score @s uhcp_a_selectedAugment matches 8 run function uhcp:augments/effects/gold/fireandwater
execute if score @s uhcp_a_selectedAugment matches 9 run function uhcp:augments/effects/gold/fishybusiness
execute if score @s uhcp_a_selectedAugment matches 10 run function uhcp:augments/effects/gold/gapplegapii
execute if score @s uhcp_a_selectedAugment matches 11 run function uhcp:augments/effects/gold/greenthumb
execute if score @s uhcp_a_selectedAugment matches 12 run function uhcp:augments/effects/gold/huntingcall
execute if score @s uhcp_a_selectedAugment matches 13 run function uhcp:augments/effects/gold/intotheminesii
execute if score @s uhcp_a_selectedAugment matches 14 run function uhcp:augments/effects/gold/backoff
execute if score @s uhcp_a_selectedAugment matches 15 run function uhcp:augments/effects/gold/johnnyappleseed
execute if score @s uhcp_a_selectedAugment matches 17 run function uhcp:augments/effects/gold/largeandincharge
execute if score @s uhcp_a_selectedAugment matches 18 run function uhcp:augments/effects/gold/latelooter
execute if score @s uhcp_a_selectedAugment matches 19 run function uhcp:augments/effects/gold/luckylooter
execute if score @s uhcp_a_selectedAugment matches 20 run function uhcp:augments/effects/gold/moneymoney
execute if score @s uhcp_a_selectedAugment matches 21 run function uhcp:augments/effects/gold/pearly
execute if score @s uhcp_a_selectedAugment matches 22 run function uhcp:augments/effects/gold/protectprotocolii
execute if score @s uhcp_a_selectedAugment matches 24 run function uhcp:augments/effects/gold/reinforcements
execute if score @s uhcp_a_selectedAugment matches 25 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Second Wind","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 26 run function uhcp:augments/effects/gold/shinyspawn
execute if score @s uhcp_a_selectedAugment matches 27 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Sneaky Sneaky","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 29 run function uhcp:augments/effects/gold/starterkitii
execute if score @s uhcp_a_selectedAugment matches 27 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Berserker","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 32 run function uhcp:augments/effects/gold/trapmaster
execute if score @s uhcp_a_selectedAugment matches 33 run function uhcp:augments/effects/gold/villageidol
execute if score @s uhcp_a_selectedAugment matches 34 run function uhcp:augments/effects/gold/bottlesmasher
execute if score @s uhcp_a_selectedAugment matches 35 run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Copper Collector","color":"gold"},{"text":"!","color":"white"}]
execute if score @s uhcp_a_selectedAugment matches 38 run function uhcp:augments/effects/gold/likefishinabarrel
execute if score @s uhcp_a_selectedAugment matches 38 run function uhcp:augments/effects/gold/oppenheimer

# Prismatic Augments
execute if score @s uhcp_a_selectedAugment matches 201 run function uhcp:augments/effects/prismatic/bowmaster
execute if score @s uhcp_a_selectedAugment matches 204 run function uhcp:augments/effects/prismatic/dimensionaltraveler
execute if score @s uhcp_a_selectedAugment matches 206 run function uhcp:augments/effects/prismatic/gapplegapiii
execute if score @s uhcp_a_selectedAugment matches 211 run function uhcp:augments/effects/prismatic/intotheminesiii
execute if score @s uhcp_a_selectedAugment matches 212 run function uhcp:augments/effects/prismatic/laststand
execute if score @s uhcp_a_selectedAugment matches 213 run function uhcp:augments/effects/prismatic/librarian
execute if score @s uhcp_a_selectedAugment matches 214 run function uhcp:augments/effects/prismatic/netherborn
execute if score @s uhcp_a_selectedAugment matches 215 run function uhcp:augments/effects/prismatic/poseidonsblessing
execute if score @s uhcp_a_selectedAugment matches 216 run function uhcp:augments/effects/prismatic/potionmaster
execute if score @s uhcp_a_selectedAugment matches 217 run function uhcp:augments/effects/prismatic/primetarget
execute if score @s uhcp_a_selectedAugment matches 220 run function uhcp:augments/effects/prismatic/restierplayer
execute if score @s uhcp_a_selectedAugment matches 224 run function uhcp:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_a_selectedAugment matches 226 run function uhcp:augments/effects/prismatic/therabbit
execute if score @s uhcp_a_selectedAugment matches 227 run function uhcp:augments/effects/prismatic/totheskies
execute if score @s uhcp_a_selectedAugment matches 228 run function uhcp:augments/effects/prismatic/trapgod
execute if score @s uhcp_a_selectedAugment matches 229 run function uhcp:augments/effects/prismatic/youhavemyrod

scoreboard players reset @s uhcp_a_stack
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal

