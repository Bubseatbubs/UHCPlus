playsound block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_aug_cd_upgrade matches 0..6 run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade/short
execute if score @s uhcp_aug_cd_upgrade matches 7..13 run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade/medium
execute if score @s uhcp_aug_cd_upgrade matches 14..20 run function uhcp:augments/effects/prismatic/cyberneticdownload/upgrade/long