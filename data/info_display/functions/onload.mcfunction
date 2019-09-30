scoreboard objectives add nife_I_D_pos_X dummy
scoreboard objectives add nife_I_D_pos_Y dummy
scoreboard objectives add nife_I_D_pos_Z dummy
scoreboard objectives add nife_Pfiretime dummy
scoreboard objectives add nife_Pfiretime dummy
scoreboard objectives add nife_ID_P-H_max dummy
scoreboard objectives add nife_ID_P-H_ex dummy
scoreboard objectives add nife_health health
scoreboard objectives add nife_stats dummy
scoreboard players set 1s nife_stats 20

tellraw @a [{"color":"dark_aqua","bold":"true","text":"Info Display"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","text":"NiFeather Info Display已被加载"}]
#tellraw @a [{"color":"dark_aqua","bold":"true","text":"Info Display"},{"color":"gray","bold":"true","text":" >> "},{"color":"gold","bold":"true","text":"版本 : alpha,master @ 0.0.0-20190927"}]