function uhcp:augments/effects/prismatic/cyberneticdownload/reset_absorption

tag @s remove UHCP_CDSelectUpgrade
tag @s remove UHCP_CD_ProtI
tag @s remove UHCP_CD_ProtII
tag @s remove UHCP_CD_ProtIII
tag @s remove UHCP_CD_Netherite

scoreboard players reset @s uhcp_aug_time
scoreboard players reset @s uhcp_aug_cd_upgrade
scoreboard players reset @s uhcp_aug_cd_firstOption
scoreboard players reset @s uhcp_aug_cd_secondOption
scoreboard players reset @s uhcp_aug_cd_thirdOption