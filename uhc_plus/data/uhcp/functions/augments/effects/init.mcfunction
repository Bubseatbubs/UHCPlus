##
# Gives player the augment they selected
# If the ID returns 0, this means the augment doesn't do anything at the start of the game
##

# Gold Augments
execute if score @s uhcp_augment matches 0 run return 0
execute if score @s uhcp_augment matches 1 run return run function uhcp:augments/effects/gold/birdsofafeather
execute if score @s uhcp_augment matches 2 run return run function uhcp:augments/effects/gold/blooddiamonds
execute if score @s uhcp_augment matches 3 run return 0
execute if score @s uhcp_augment matches 4 run return run function uhcp:augments/effects/gold/cowboycosplay
execute if score @s uhcp_augment matches 5 run return run function uhcp:augments/effects/gold/takeaimii
execute if score @s uhcp_augment matches 6 run return run function uhcp:augments/effects/gold/phantomclaw
execute if score @s uhcp_augment matches 7 run return run function uhcp:augments/effects/gold/dripeconomyii
execute if score @s uhcp_augment matches 8 run return run function uhcp:augments/effects/gold/fireandwater
execute if score @s uhcp_augment matches 9 run return run function uhcp:augments/effects/gold/gapplegapii
execute if score @s uhcp_augment matches 10 run return 0
execute if score @s uhcp_augment matches 11 run return run function uhcp:augments/effects/gold/greenthumb
execute if score @s uhcp_augment matches 12 run return run function uhcp:augments/effects/gold/huntingcall
execute if score @s uhcp_augment matches 13 run return run function uhcp:augments/effects/gold/intotheminesii
execute if score @s uhcp_augment matches 14 run return run function uhcp:augments/effects/gold/largeandincharge
execute if score @s uhcp_augment matches 15 run return run function uhcp:augments/effects/gold/johnnyappleseed
execute if score @s uhcp_augment matches 16 run return 0
execute if score @s uhcp_augment matches 17 run return run function uhcp:augments/effects/gold/lessthan3
execute if score @s uhcp_augment matches 18 run return run function uhcp:augments/effects/gold/latelooter
execute if score @s uhcp_augment matches 19 run return run function uhcp:augments/effects/gold/luckylooter
execute if score @s uhcp_augment matches 20 run return run function uhcp:augments/effects/gold/moneymoney
execute if score @s uhcp_augment matches 21 run return run function uhcp:augments/effects/gold/pearly
execute if score @s uhcp_augment matches 22 run return run function uhcp:augments/effects/gold/protectprotocolii
execute if score @s uhcp_augment matches 23 run return run function uhcp:augments/effects/gold/lilbro
execute if score @s uhcp_augment matches 24 run return run function uhcp:augments/effects/gold/moonwalking
execute if score @s uhcp_augment matches 25 run return run function uhcp:augments/effects/gold/scavengerhunt
execute if score @s uhcp_augment matches 26 run return run function uhcp:augments/effects/gold/shinyspawn
execute if score @s uhcp_augment matches 27 run return 0
execute if score @s uhcp_augment matches 29 run return run function uhcp:augments/effects/gold/starterkitii
execute if score @s uhcp_augment matches 27 run return 0
execute if score @s uhcp_augment matches 30 run return 0
execute if score @s uhcp_augment matches 31 run return run function uhcp:augments/effects/gold/tightlypacked
execute if score @s uhcp_augment matches 32 run return run function uhcp:augments/effects/gold/trapmaster
execute if score @s uhcp_augment matches 33 run return run function uhcp:augments/effects/gold/villageidol
execute if score @s uhcp_augment matches 34 run return run function uhcp:augments/effects/gold/bottlesmasher
execute if score @s uhcp_augment matches 35 run return 0
execute if score @s uhcp_augment matches 37 run return run function uhcp:augments/effects/gold/likefishinabarrel
execute if score @s uhcp_augment matches 38 run return run function uhcp:augments/effects/gold/oppenheimer
execute if score @s uhcp_augment matches 39 run return run function uhcp:augments/effects/gold/poseidonsblessing
execute if score @s uhcp_augment matches 40 run return run function uhcp:augments/effects/gold/relicsofthepast
execute if score @s uhcp_augment matches 41 run return run function uhcp:augments/effects/gold/sniffa
execute if score @s uhcp_augment matches 43 run return run function uhcp:augments/effects/gold/mansbestfriend
execute if score @s uhcp_augment matches 44 run return 0
execute if score @s uhcp_augment matches 45 run return run function uhcp:augments/effects/gold/youhavemyrodii
execute if score @s uhcp_augment matches 46 run return run function uhcp:augments/effects/gold/crazyconsumables
execute if score @s uhcp_augment matches 47 run return run function uhcp:augments/effects/gold/imperfectreplica
execute if score @s uhcp_augment matches 48 run return run function uhcp:augments/effects/gold/soulsiphon/init
execute if score @s uhcp_augment matches 51 run return run function uhcp:augments/effects/gold/bookworm
execute if score @s uhcp_augment matches 53 run return run function uhcp:augments/effects/gold/capped
execute if score @s uhcp_augment matches 55 run return run function uhcp:augments/effects/gold/hardstuckiron
execute if score @s uhcp_augment matches 56 run return run function uhcp:augments/effects/gold/lockedout

# Silver Augments
execute if score @s uhcp_augment matches 100 run return run function uhcp:augments/effects/silver/shoma
execute if score @s uhcp_augment matches 101 run return run function uhcp:augments/effects/silver/afk
execute if score @s uhcp_augment matches 102 run return run function uhcp:augments/effects/silver/blacksmith
execute if score @s uhcp_augment matches 103 run return run function uhcp:augments/effects/silver/bucketlist
execute if score @s uhcp_augment matches 104 run return 0
execute if score @s uhcp_augment matches 106 run return run function uhcp:augments/effects/silver/youhavemyrodi
execute if score @s uhcp_augment matches 107 run return run function uhcp:augments/effects/silver/dripeconomyi
execute if score @s uhcp_augment matches 108 run return run function uhcp:augments/effects/silver/drunkenstupor
execute if score @s uhcp_augment matches 109 run return run function uhcp:augments/effects/silver/emptyhearted
execute if score @s uhcp_augment matches 111 run return run function uhcp:augments/effects/silver/gapplegapi
execute if score @s uhcp_augment matches 112 run return 0
execute if score @s uhcp_augment matches 113 run return run function uhcp:augments/effects/silver/ittakesavillage
execute if score @s uhcp_augment matches 114 run return run function uhcp:augments/effects/silver/intotheminesi
execute if score @s uhcp_augment matches 115 run return run function uhcp:augments/effects/silver/ironwill
execute if score @s uhcp_augment matches 116 run return run function uhcp:augments/effects/silver/strongswimmer
execute if score @s uhcp_augment matches 117 run return 0
execute if score @s uhcp_augment matches 118 run return run function uhcp:augments/effects/silver/raveparty
execute if score @s uhcp_augment matches 119 run return run function uhcp:augments/effects/silver/monsterhunter
execute if score @s uhcp_augment matches 120 run return 0
execute if score @s uhcp_augment matches 121 run return run function uhcp:augments/effects/silver/cheapimitation
execute if score @s uhcp_augment matches 122 run return run function uhcp:augments/effects/silver/sleightofhand
execute if score @s uhcp_augment matches 125 run return run function uhcp:augments/effects/silver/sneaky
execute if score @s uhcp_augment matches 126 run return run function uhcp:augments/effects/silver/speedystart
execute if score @s uhcp_augment matches 127 run return run function uhcp:augments/effects/silver/starterkiti
execute if score @s uhcp_augment matches 128 run return run function uhcp:augments/effects/silver/stickysituation
execute if score @s uhcp_augment matches 129 run return run function uhcp:augments/effects/silver/storagesolution
execute if score @s uhcp_augment matches 130 run return 0
execute if score @s uhcp_augment matches 133 run return run function uhcp:augments/effects/silver/trapenthusiast
execute if score @s uhcp_augment matches 135 run return run function uhcp:augments/effects/silver/structurescout
execute if score @s uhcp_augment matches 136 run return run function uhcp:augments/effects/silver/fishybusiness
execute if score @s uhcp_augment matches 138 run return run function uhcp:augments/effects/silver/crazycatlady
execute if score @s uhcp_augment matches 139 run return run function uhcp:augments/effects/silver/theboat
execute if score @s uhcp_augment matches 140 run return run function uhcp:augments/effects/silver/thewatcher
execute if score @s uhcp_augment matches 141 run return run function uhcp:augments/effects/silver/finalupgrade
execute if score @s uhcp_augment matches 142 run return run function uhcp:augments/effects/silver/tunnelvision
execute if score @s uhcp_augment matches 143 run return 0
execute if score @s uhcp_augment matches 144 run return run function uhcp:augments/effects/silver/backoff
execute if score @s uhcp_augment matches 145 run return 0
execute if score @s uhcp_augment matches 146 run return run function uhcp:augments/effects/silver/portablelavapool
execute if score @s uhcp_augment matches 147 run return run function uhcp:augments/effects/silver/parasite
execute if score @s uhcp_augment matches 148 run return run function uhcp:augments/effects/silver/littlebuddies
execute if score @s uhcp_augment matches 149 run return run function uhcp:augments/effects/silver/takeaimi
execute if score @s uhcp_augment matches 150 run return 0

# Prismatic Augments
execute if score @s uhcp_augment matches 200 run return run function uhcp:augments/effects/prismatic/beastmaster
execute if score @s uhcp_augment matches 201 run return run function uhcp:augments/effects/prismatic/bowmaster
execute if score @s uhcp_augment matches 202 run return run function uhcp:augments/effects/prismatic/coldblooded
execute if score @s uhcp_augment matches 203 run return run function uhcp:augments/effects/prismatic/cruelpact
execute if score @s uhcp_augment matches 204 run return run function uhcp:augments/effects/prismatic/gumgumfruit
execute if score @s uhcp_augment matches 206 run return run function uhcp:augments/effects/prismatic/gapplegapiii
execute if score @s uhcp_augment matches 207 run return run function uhcp:augments/effects/prismatic/gasgasgas
execute if score @s uhcp_augment matches 208 run return run function uhcp:augments/effects/prismatic/attackontitan
execute if score @s uhcp_augment matches 210 run return 0
execute if score @s uhcp_augment matches 211 run return run function uhcp:augments/effects/prismatic/intotheminesiii
execute if score @s uhcp_augment matches 212 run return run function uhcp:augments/effects/prismatic/laststand
execute if score @s uhcp_augment matches 213 run return run function uhcp:augments/effects/prismatic/librarian
execute if score @s uhcp_augment matches 214 run return run function uhcp:augments/effects/prismatic/netherborn
execute if score @s uhcp_augment matches 216 run return run function uhcp:augments/effects/prismatic/potionmaster
execute if score @s uhcp_augment matches 217 run return run function uhcp:augments/effects/prismatic/primetarget
execute if score @s uhcp_augment matches 218 run return 0
execute if score @s uhcp_augment matches 219 run return run function uhcp:augments/effects/prismatic/lilestbro
execute if score @s uhcp_augment matches 220 run return run function uhcp:augments/effects/prismatic/cyberneticdownload
execute if score @s uhcp_augment matches 221 run return run function uhcp:augments/effects/gold/phantomclaw
execute if score @s uhcp_augment matches 222 run return run function uhcp:augments/effects/prismatic/sololeveling
execute if score @s uhcp_augment matches 223 run return 0
execute if score @s uhcp_augment matches 224 run return run function uhcp:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_augment matches 225 run return run function uhcp:augments/effects/prismatic/surfaceduty
execute if score @s uhcp_augment matches 226 run return run function uhcp:augments/effects/prismatic/thehare
execute if score @s uhcp_augment matches 227 run return run function uhcp:augments/effects/prismatic/totheskies
execute if score @s uhcp_augment matches 228 run return run function uhcp:augments/effects/prismatic/trapgod
execute if score @s uhcp_augment matches 229 run return run function uhcp:augments/effects/prismatic/youhavemyrod
execute if score @s uhcp_augment matches 230 run return run function uhcp:augments/effects/prismatic/featherstorm
execute if score @s uhcp_augment matches 231 run return run function uhcp:augments/effects/prismatic/trailblazer
execute if score @s uhcp_augment matches 232 run return run function uhcp:augments/effects/prismatic/kungfupanda
execute if score @s uhcp_augment matches 233 run return run function uhcp:augments/effects/prismatic/perfectreplica
execute if score @s uhcp_augment matches 234 run return run function uhcp:augments/effects/prismatic/bookwormii
execute if score @s uhcp_augment matches 236 run return run function uhcp:augments/effects/prismatic/thetortoise
execute if score @s uhcp_augment matches 237 run return run function uhcp:augments/effects/prismatic/gloryofra
execute if score @s uhcp_augment matches 238 run return run function uhcp:augments/effects/prismatic/relicmaster
execute if score @s uhcp_augment matches 239 run return run function uhcp:augments/effects/prismatic/midastouch
execute if score @s uhcp_augment matches 241 run return run function uhcp:augments/effects/prismatic/thinkfast
execute if score @s uhcp_augment matches 242 run return run function uhcp:augments/effects/prismatic/diamondgrabbag
execute if score @s uhcp_augment matches 243 run return run function uhcp:augments/effects/prismatic/radiantrelics
execute if score @s uhcp_augment matches 244 run return run function uhcp:augments/effects/prismatic/hedgefund
execute if score @s uhcp_augment matches 245 run return run function uhcp:augments/effects/prismatic/wellprotected
execute if score @s uhcp_augment matches 246 run return run function uhcp:augments/effects/prismatic/buzzybees

scoreboard players reset @s uhcp_aug_stack
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal
