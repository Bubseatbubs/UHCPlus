##
# Gives player the augment they selected
# If the ID returns 0, this means the augment doesn't do anything at the start of the game
##

# Silver Augments
execute if score @s uhcp_a_selectedAugment matches 100 run function uhcp:augments/effects/silver/shoma
execute if score @s uhcp_a_selectedAugment matches 101 run function uhcp:augments/effects/silver/afk
execute if score @s uhcp_a_selectedAugment matches 102 run function uhcp:augments/effects/silver/blacksmith
execute if score @s uhcp_a_selectedAugment matches 103 run function uhcp:augments/effects/silver/bucketlist
execute if score @s uhcp_a_selectedAugment matches 107 run function uhcp:augments/effects/silver/dripeconomyi
execute if score @s uhcp_a_selectedAugment matches 108 run function uhcp:augments/effects/silver/drunkenstupor
execute if score @s uhcp_a_selectedAugment matches 109 run function uhcp:augments/effects/silver/emptyhearted
execute if score @s uhcp_a_selectedAugment matches 111 run function uhcp:augments/effects/silver/gapplegapi
execute if score @s uhcp_a_selectedAugment matches 112 run return 0
execute if score @s uhcp_a_selectedAugment matches 114 run function uhcp:augments/effects/silver/intotheminesi
execute if score @s uhcp_a_selectedAugment matches 115 run function uhcp:augments/effects/silver/ironwill
execute if score @s uhcp_a_selectedAugment matches 117 run return 0
execute if score @s uhcp_a_selectedAugment matches 119 run function uhcp:augments/effects/silver/monsterhunter
execute if score @s uhcp_a_selectedAugment matches 120 run return 0
execute if score @s uhcp_a_selectedAugment matches 122 run function uhcp:augments/effects/silver/rattunneler
execute if score @s uhcp_a_selectedAugment matches 125 run function uhcp:augments/effects/silver/sneaky
execute if score @s uhcp_a_selectedAugment matches 126 run function uhcp:augments/effects/silver/speedystart
execute if score @s uhcp_a_selectedAugment matches 127 run function uhcp:augments/effects/silver/starterkiti
execute if score @s uhcp_a_selectedAugment matches 128 run function uhcp:augments/effects/silver/stickysituation
execute if score @s uhcp_a_selectedAugment matches 129 run function uhcp:augments/effects/silver/storagesolution
execute if score @s uhcp_a_selectedAugment matches 130 run return 0
execute if score @s uhcp_a_selectedAugment matches 133 run function uhcp:augments/effects/silver/trapenthusiast
execute if score @s uhcp_a_selectedAugment matches 135 run function uhcp:augments/effects/silver/structurescout
execute if score @s uhcp_a_selectedAugment matches 136 run function uhcp:augments/effects/silver/fishybusiness
execute if score @s uhcp_a_selectedAugment matches 139 run function uhcp:augments/effects/silver/theboat
execute if score @s uhcp_a_selectedAugment matches 140 run function uhcp:augments/effects/silver/thewatcher
execute if score @s uhcp_a_selectedAugment matches 141 run function uhcp:augments/effects/silver/finalupgrade
execute if score @s uhcp_a_selectedAugment matches 142 run function uhcp:augments/effects/silver/tunnelvision
execute if score @s uhcp_a_selectedAugment matches 143 run return 0
execute if score @s uhcp_a_selectedAugment matches 144 run function uhcp:augments/effects/silver/backoff
execute if score @s uhcp_a_selectedAugment matches 145 run return 0
execute if score @s uhcp_a_selectedAugment matches 146 run function uhcp:augments/effects/silver/portablelavapool
execute if score @s uhcp_a_selectedAugment matches 147 run function uhcp:augments/effects/silver/parasite
execute if score @s uhcp_a_selectedAugment matches 148 run function uhcp:augments/effects/silver/littlebuddies

# Gold Augments
execute if score @s uhcp_a_selectedAugment matches 0 run return 0
execute if score @s uhcp_a_selectedAugment matches 1 run function uhcp:augments/effects/gold/birdsofafeather
execute if score @s uhcp_a_selectedAugment matches 2 run function uhcp:augments/effects/gold/blooddiamonds
execute if score @s uhcp_a_selectedAugment matches 3 run return 0
execute if score @s uhcp_a_selectedAugment matches 4 run function uhcp:augments/effects/gold/cowboycosplay
execute if score @s uhcp_a_selectedAugment matches 5 run return 0
execute if score @s uhcp_a_selectedAugment matches 7 run function uhcp:augments/effects/gold/dripeconomyii
execute if score @s uhcp_a_selectedAugment matches 8 run function uhcp:augments/effects/gold/fireandwater
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
execute if score @s uhcp_a_selectedAugment matches 25 run return 0
execute if score @s uhcp_a_selectedAugment matches 26 run function uhcp:augments/effects/gold/shinyspawn
execute if score @s uhcp_a_selectedAugment matches 27 run return 0
execute if score @s uhcp_a_selectedAugment matches 29 run function uhcp:augments/effects/gold/starterkitii
execute if score @s uhcp_a_selectedAugment matches 27 run return 0
execute if score @s uhcp_a_selectedAugment matches 32 run function uhcp:augments/effects/gold/trapmaster
execute if score @s uhcp_a_selectedAugment matches 33 run function uhcp:augments/effects/gold/villageidol
execute if score @s uhcp_a_selectedAugment matches 34 run function uhcp:augments/effects/gold/bottlesmasher
execute if score @s uhcp_a_selectedAugment matches 35 run return 0
execute if score @s uhcp_a_selectedAugment matches 37 run function uhcp:augments/effects/gold/likefishinabarrel
execute if score @s uhcp_a_selectedAugment matches 38 run function uhcp:augments/effects/gold/oppenheimer
execute if score @s uhcp_a_selectedAugment matches 39 run function uhcp:augments/effects/gold/poseidonsblessing
execute if score @s uhcp_a_selectedAugment matches 40 run function uhcp:augments/effects/gold/relicsofthepast
execute if score @s uhcp_a_selectedAugment matches 41 run function uhcp:augments/effects/gold/sniffa
execute if score @s uhcp_a_selectedAugment matches 35 run return 0

# Prismatic Augments
execute if score @s uhcp_a_selectedAugment matches 201 run function uhcp:augments/effects/prismatic/bowmaster
execute if score @s uhcp_a_selectedAugment matches 203 run function uhcp:augments/effects/prismatic/cruelpact
execute if score @s uhcp_a_selectedAugment matches 206 run function uhcp:augments/effects/prismatic/gapplegapiii
execute if score @s uhcp_a_selectedAugment matches 207 run function uhcp:augments/effects/prismatic/gasgasgas
execute if score @s uhcp_a_selectedAugment matches 208 run function uhcp:augments/effects/prismatic/glasscannon
execute if score @s uhcp_a_selectedAugment matches 211 run function uhcp:augments/effects/prismatic/intotheminesiii
execute if score @s uhcp_a_selectedAugment matches 212 run function uhcp:augments/effects/prismatic/laststand
execute if score @s uhcp_a_selectedAugment matches 213 run function uhcp:augments/effects/prismatic/librarian
execute if score @s uhcp_a_selectedAugment matches 214 run function uhcp:augments/effects/prismatic/netherborn
execute if score @s uhcp_a_selectedAugment matches 216 run function uhcp:augments/effects/prismatic/potionmaster
execute if score @s uhcp_a_selectedAugment matches 217 run function uhcp:augments/effects/prismatic/primetarget
execute if score @s uhcp_a_selectedAugment matches 220 run function uhcp:augments/effects/prismatic/restierplayer
execute if score @s uhcp_a_selectedAugment matches 221 run return 0
execute if score @s uhcp_a_selectedAugment matches 222 run function uhcp:augments/effects/prismatic/sololeveling
execute if score @s uhcp_a_selectedAugment matches 225 run function uhcp:augments/effects/prismatic/surfaceduty
execute if score @s uhcp_a_selectedAugment matches 224 run function uhcp:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_a_selectedAugment matches 226 run function uhcp:augments/effects/prismatic/thehare
execute if score @s uhcp_a_selectedAugment matches 227 run function uhcp:augments/effects/prismatic/totheskies
execute if score @s uhcp_a_selectedAugment matches 228 run function uhcp:augments/effects/prismatic/trapgod
execute if score @s uhcp_a_selectedAugment matches 229 run function uhcp:augments/effects/prismatic/youhavemyrod
execute if score @s uhcp_a_selectedAugment matches 236 run function uhcp:augments/effects/prismatic/thetortoise
execute if score @s uhcp_a_selectedAugment matches 237 run function uhcp:augments/effects/prismatic/gloryofra
execute if score @s uhcp_a_selectedAugment matches 238 run function uhcp:augments/effects/prismatic/relicmaster
execute if score @s uhcp_a_selectedAugment matches 239 run function uhcp:augments/effects/prismatic/shadowclonejutsu
execute if score @s uhcp_a_selectedAugment matches 240 run function uhcp:augments/effects/prismatic/zeusfavor


scoreboard players reset @s uhcp_a_stack
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal
