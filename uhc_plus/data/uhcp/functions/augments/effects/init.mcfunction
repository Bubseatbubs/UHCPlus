##
# Gives player the augment they selected
# If the ID returns 0, this means the augment doesn't do anything at the start of the game
##

# Silver Augments
execute if score @s uhcp_augment matches 100 run function uhcp:augments/effects/silver/shoma
execute if score @s uhcp_augment matches 101 run function uhcp:augments/effects/silver/afk
execute if score @s uhcp_augment matches 102 run function uhcp:augments/effects/silver/blacksmith
execute if score @s uhcp_augment matches 103 run function uhcp:augments/effects/silver/bucketlist
execute if score @s uhcp_augment matches 104 run return 0
execute if score @s uhcp_augment matches 106 run function uhcp:augments/effects/silver/youhavemyrodi
execute if score @s uhcp_augment matches 107 run function uhcp:augments/effects/silver/dripeconomyi
execute if score @s uhcp_augment matches 108 run function uhcp:augments/effects/silver/drunkenstupor
execute if score @s uhcp_augment matches 109 run function uhcp:augments/effects/silver/emptyhearted
execute if score @s uhcp_augment matches 111 run function uhcp:augments/effects/silver/gapplegapi
execute if score @s uhcp_augment matches 112 run return 0
execute if score @s uhcp_augment matches 113 run function uhcp:augments/effects/silver/ittakesavillage
execute if score @s uhcp_augment matches 114 run function uhcp:augments/effects/silver/intotheminesi
execute if score @s uhcp_augment matches 115 run function uhcp:augments/effects/silver/ironwill
execute if score @s uhcp_augment matches 116 run function uhcp:augments/effects/silver/strongswimmer
execute if score @s uhcp_augment matches 117 run return 0
execute if score @s uhcp_augment matches 118 run function uhcp:augments/effects/silver/raveparty
execute if score @s uhcp_augment matches 119 run function uhcp:augments/effects/silver/monsterhunter
execute if score @s uhcp_augment matches 120 run return 0
execute if score @s uhcp_augment matches 121 run function uhcp:augments/effects/silver/cheapimitation
execute if score @s uhcp_augment matches 122 run function uhcp:augments/effects/silver/sleightofhand

execute if score @s uhcp_augment matches 125 run function uhcp:augments/effects/silver/sneaky
execute if score @s uhcp_augment matches 126 run function uhcp:augments/effects/silver/speedystart
execute if score @s uhcp_augment matches 127 run function uhcp:augments/effects/silver/starterkiti
execute if score @s uhcp_augment matches 128 run function uhcp:augments/effects/silver/stickysituation
execute if score @s uhcp_augment matches 129 run function uhcp:augments/effects/silver/storagesolution
execute if score @s uhcp_augment matches 130 run return 0
execute if score @s uhcp_augment matches 133 run function uhcp:augments/effects/silver/trapenthusiast
execute if score @s uhcp_augment matches 135 run function uhcp:augments/effects/silver/structurescout
execute if score @s uhcp_augment matches 136 run function uhcp:augments/effects/silver/fishybusiness
execute if score @s uhcp_augment matches 138 run function uhcp:augments/effects/silver/crazycatlady
execute if score @s uhcp_augment matches 139 run function uhcp:augments/effects/silver/theboat
execute if score @s uhcp_augment matches 140 run function uhcp:augments/effects/silver/thewatcher
execute if score @s uhcp_augment matches 141 run function uhcp:augments/effects/silver/finalupgrade
execute if score @s uhcp_augment matches 142 run function uhcp:augments/effects/silver/tunnelvision
execute if score @s uhcp_augment matches 143 run return 0
execute if score @s uhcp_augment matches 144 run function uhcp:augments/effects/silver/backoff
execute if score @s uhcp_augment matches 145 run return 0
execute if score @s uhcp_augment matches 146 run function uhcp:augments/effects/silver/portablelavapool
execute if score @s uhcp_augment matches 147 run function uhcp:augments/effects/silver/parasite
execute if score @s uhcp_augment matches 148 run function uhcp:augments/effects/silver/littlebuddies
execute if score @s uhcp_augment matches 149 run function uhcp:augments/effects/silver/takeaim
execute if score @s uhcp_augment matches 150 run return 0

# Gold Augments
execute if score @s uhcp_augment matches 0 run return 0
execute if score @s uhcp_augment matches 1 run function uhcp:augments/effects/gold/birdsofafeather
execute if score @s uhcp_augment matches 2 run function uhcp:augments/effects/gold/blooddiamonds
execute if score @s uhcp_augment matches 3 run return 0
execute if score @s uhcp_augment matches 4 run function uhcp:augments/effects/gold/cowboycosplay
execute if score @s uhcp_augment matches 5 run return 0
execute if score @s uhcp_augment matches 6 run function uhcp:augments/effects/gold/phantomclaw
execute if score @s uhcp_augment matches 7 run function uhcp:augments/effects/gold/dripeconomyii
execute if score @s uhcp_augment matches 8 run function uhcp:augments/effects/gold/fireandwater
execute if score @s uhcp_augment matches 9 run function uhcp:augments/effects/gold/gapplegapii
execute if score @s uhcp_augment matches 10 run return 0
execute if score @s uhcp_augment matches 11 run function uhcp:augments/effects/gold/greenthumb
execute if score @s uhcp_augment matches 12 run function uhcp:augments/effects/gold/huntingcall
execute if score @s uhcp_augment matches 13 run function uhcp:augments/effects/gold/intotheminesii
execute if score @s uhcp_augment matches 14 run function uhcp:augments/effects/gold/largeandincharge
execute if score @s uhcp_augment matches 15 run function uhcp:augments/effects/gold/johnnyappleseed
execute if score @s uhcp_augment matches 16 run return 0
execute if score @s uhcp_augment matches 17 run function uhcp:augments/effects/gold/lessthan3
execute if score @s uhcp_augment matches 18 run function uhcp:augments/effects/gold/latelooter
execute if score @s uhcp_augment matches 19 run function uhcp:augments/effects/gold/luckylooter
execute if score @s uhcp_augment matches 20 run function uhcp:augments/effects/gold/moneymoney
execute if score @s uhcp_augment matches 21 run function uhcp:augments/effects/gold/pearly
execute if score @s uhcp_augment matches 23 run function uhcp:augments/effects/gold/lilbro
execute if score @s uhcp_augment matches 24 run function uhcp:augments/effects/gold/moonwalking
execute if score @s uhcp_augment matches 25 run return 0
execute if score @s uhcp_augment matches 26 run function uhcp:augments/effects/gold/shinyspawn
execute if score @s uhcp_augment matches 27 run return 0
execute if score @s uhcp_augment matches 29 run function uhcp:augments/effects/gold/starterkitii
execute if score @s uhcp_augment matches 27 run return 0
execute if score @s uhcp_augment matches 30 run return 0
execute if score @s uhcp_augment matches 31 run function uhcp:augments/effects/gold/tightlypacked
execute if score @s uhcp_augment matches 32 run function uhcp:augments/effects/gold/trapmaster
execute if score @s uhcp_augment matches 33 run function uhcp:augments/effects/gold/villageidol
execute if score @s uhcp_augment matches 34 run function uhcp:augments/effects/gold/bottlesmasher
execute if score @s uhcp_augment matches 35 run return 0
execute if score @s uhcp_augment matches 37 run function uhcp:augments/effects/gold/likefishinabarrel
execute if score @s uhcp_augment matches 38 run function uhcp:augments/effects/gold/oppenheimer
execute if score @s uhcp_augment matches 39 run function uhcp:augments/effects/gold/poseidonsblessing
execute if score @s uhcp_augment matches 40 run function uhcp:augments/effects/gold/relicsofthepast
execute if score @s uhcp_augment matches 41 run function uhcp:augments/effects/gold/sniffa
execute if score @s uhcp_augment matches 43 run function uhcp:augments/effects/gold/mansbestfriend
execute if score @s uhcp_augment matches 44 run return 0
execute if score @s uhcp_augment matches 45 run function uhcp:augments/effects/gold/youhavemyrodii
execute if score @s uhcp_augment matches 46 run function uhcp:augments/effects/gold/crazyconsumables
execute if score @s uhcp_augment matches 47 run function uhcp:augments/effects/gold/imperfectreplica
execute if score @s uhcp_augment matches 51 run function uhcp:augments/effects/gold/bookworm
execute if score @s uhcp_augment matches 53 run function uhcp:augments/effects/gold/capped
execute if score @s uhcp_augment matches 55 run function uhcp:augments/effects/gold/hardstuckiron

# Prismatic Augments
execute if score @s uhcp_augment matches 200 run function uhcp:augments/effects/prismatic/beastmaster
execute if score @s uhcp_augment matches 201 run function uhcp:augments/effects/prismatic/bowmaster
execute if score @s uhcp_augment matches 202 run function uhcp:augments/effects/prismatic/coldblooded
execute if score @s uhcp_augment matches 203 run function uhcp:augments/effects/prismatic/cruelpact
execute if score @s uhcp_augment matches 204 run function uhcp:augments/effects/prismatic/gumgumfruit
execute if score @s uhcp_augment matches 206 run function uhcp:augments/effects/prismatic/gapplegapiii
execute if score @s uhcp_augment matches 207 run function uhcp:augments/effects/prismatic/gasgasgas
execute if score @s uhcp_augment matches 210 run return 0
execute if score @s uhcp_augment matches 211 run function uhcp:augments/effects/prismatic/intotheminesiii
execute if score @s uhcp_augment matches 212 run function uhcp:augments/effects/prismatic/laststand
execute if score @s uhcp_augment matches 213 run function uhcp:augments/effects/prismatic/librarian
execute if score @s uhcp_augment matches 214 run function uhcp:augments/effects/prismatic/netherborn
execute if score @s uhcp_augment matches 216 run function uhcp:augments/effects/prismatic/potionmaster
execute if score @s uhcp_augment matches 217 run function uhcp:augments/effects/prismatic/primetarget
execute if score @s uhcp_augment matches 218 run return 0
execute if score @s uhcp_augment matches 219 run function uhcp:augments/effects/prismatic/lilestbro
execute if score @s uhcp_augment matches 220 run function uhcp:augments/effects/prismatic/cyberneticdownload
execute if score @s uhcp_augment matches 221 run function uhcp:augments/effects/gold/phantomclaw
execute if score @s uhcp_augment matches 222 run function uhcp:augments/effects/prismatic/sololeveling
execute if score @s uhcp_augment matches 223 run return 0
execute if score @s uhcp_augment matches 224 run function uhcp:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_augment matches 225 run function uhcp:augments/effects/prismatic/surfaceduty
execute if score @s uhcp_augment matches 226 run function uhcp:augments/effects/prismatic/thehare
execute if score @s uhcp_augment matches 227 run function uhcp:augments/effects/prismatic/totheskies
execute if score @s uhcp_augment matches 228 run function uhcp:augments/effects/prismatic/trapgod
execute if score @s uhcp_augment matches 229 run function uhcp:augments/effects/prismatic/youhavemyrod
execute if score @s uhcp_augment matches 230 run function uhcp:augments/effects/prismatic/featherstorm
execute if score @s uhcp_augment matches 231 run function uhcp:augments/effects/prismatic/trailblazer
execute if score @s uhcp_augment matches 232 run function uhcp:augments/effects/prismatic/kungfupanda
execute if score @s uhcp_augment matches 233 run function uhcp:augments/effects/prismatic/perfectreplica
execute if score @s uhcp_augment matches 234 run function uhcp:augments/effects/prismatic/bookwormii
execute if score @s uhcp_augment matches 236 run function uhcp:augments/effects/prismatic/thetortoise
execute if score @s uhcp_augment matches 237 run function uhcp:augments/effects/prismatic/gloryofra
execute if score @s uhcp_augment matches 238 run function uhcp:augments/effects/prismatic/relicmaster
execute if score @s uhcp_augment matches 241 run function uhcp:augments/effects/prismatic/thinkfast
execute if score @s uhcp_augment matches 242 run function uhcp:augments/effects/prismatic/diamondgrabbag
execute if score @s uhcp_augment matches 243 run function uhcp:augments/effects/prismatic/radiantrelics
execute if score @s uhcp_augment matches 244 run function uhcp:augments/effects/prismatic/hedgefund
execute if score @s uhcp_augment matches 245 run function uhcp:augments/effects/prismatic/wellprotected
execute if score @s uhcp_augment matches 246 run function uhcp:augments/effects/prismatic/buzzybees

scoreboard players reset @s uhcp_aug_stack
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal
