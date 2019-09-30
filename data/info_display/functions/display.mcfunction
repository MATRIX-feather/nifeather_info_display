execute store result score @s nife_I_D_pos_X run data get entity @s Pos[0]
execute store result score @s nife_I_D_pos_Y run data get entity @s Pos[1]
execute store result score @s nife_I_D_pos_Z run data get entity @s Pos[2]
execute store result score @s nife_Pfiretime run data get entity @s Fire
scoreboard players add @s nife_Pfiretime 20
scoreboard players operation @s nife_Pfiretime /= 1s nife_stats
title @s actionbar [{"color":"gray","text":"x ","bold":true},{"color":"green","bold":true,"score":{"objective":"nife_I_D_pos_X","name":"@s"}},{"text":" | ","bold":true},{"text":"y "},{"score":{"objective":"nife_I_D_pos_Y","name":"@s"}},{"text":" | "},{"text":"z ","bold":true},{"color":"gold","bold":true,"score":{"objective":"nife_I_D_pos_Z","name":"@s"}},{"text":" | ","bold":true},{"text":"着火时间 : "},{"color":"red","score":{"objective":"nife_Pfiretime","name":"@s"}},{"text":" 秒"}]