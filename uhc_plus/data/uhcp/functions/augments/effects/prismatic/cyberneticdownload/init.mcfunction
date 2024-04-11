execute store result score @s uhcp_aug_cd_firstOption run random value 0..6
execute store result score @s uhcp_aug_cd_secondOption run random value 7..13
execute store result score @s uhcp_aug_cd_thirdOption run random value 14..20
scoreboard players reset @s upgrade
tag @s add UHCP_CDSelectUpgrade

function uhcp:augments/effects/prismatic/cyberneticdownload/menu