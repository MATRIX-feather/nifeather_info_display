execute as @a[tag=!nife_no_compass,nbt={SelectedItem:{id:"minecraft:compass"}}] run function info_display:display
execute as @a[tag=!nife_no_compass,nbt={Inventory:[{id:"minecraft:compass",Slot:-106b}]}] run function info_display:display
execute as @a[tag=!nife_no_compass,nbt={Inventory:[{id:"minecraft:compass",Slot:17b}]}] run function info_display:display
#获取最大生命
execute as @a store result score @s nife_ID_P-H_max run data get entity @s Attributes[0].Base
execute as @a store result score @s nife_ID_P-H_ex run data get entity @s Attributes[0].Modifiers[0].Amount
execute as @a if score @s nife_ID_P-H_ex matches 1.. run scoreboard players operation @s nife_ID_P-H_max += @s nife_ID_P-H_ex
#重置数据
#P-H_tot : 所有玩家生命加起来的值
#P-H_tot_max : 所有玩家生命最大值加起来的值
scoreboard players set ID_player_count nife_stats 0
scoreboard players set P-H_tot_max nife_ID_P-H_max 0
scoreboard players set P-H_tot nife_ID_P-H_max 0
scoreboard players set P-H_stage1 nife_ID_P-H_max 5
scoreboard players set P-H_stage2 nife_ID_P-H_max 10
scoreboard players set P-H_stage3 nife_ID_P-H_max 18
#计算当前生命
execute at @a run scoreboard players add ID_player_count nife_stats 1
scoreboard players operation P-H_tot nife_ID_P-H_max += @a nife_health
scoreboard players operation P-H_stage1 nife_ID_P-H_max *= ID_player_count nife_stats
scoreboard players operation P-H_stage2 nife_ID_P-H_max *= ID_player_count nife_stats
scoreboard players operation P-H_stage3 nife_ID_P-H_max *= ID_player_count nife_stats
#计算最大生命
scoreboard players operation P-H_tot_max nife_ID_P-H_max += @a nife_ID_P-H_max
#更新bossbar
execute store result bossbar nife:p-h-max max run scoreboard players get P-H_tot_max nife_ID_P-H_max
execute store result bossbar nife:p-h-max value run scoreboard players get P-H_tot nife_ID_P-H_max
bossbar set nife:p-h-max players @a
#如果 P-H_tot(当前所有玩家的生命) 小于 _stage1 则 <..>
#如果 P-H_tot(当前所有玩家的生命) 大于等于 上一个_stage 并 小于 下一个_stage 则 <..>
execute if score P-H_tot nife_ID_P-H_max < P-H_stage1 nife_ID_P-H_max run function info_display:health_stage1
execute if score P-H_tot nife_ID_P-H_max >= P-H_stage1 nife_ID_P-H_max if score P-H_tot nife_ID_P-H_max < P-H_stage2 nife_ID_P-H_max run function info_display:health_stage2
execute if score P-H_tot nife_ID_P-H_max >= P-H_stage2 nife_ID_P-H_max if score P-H_tot nife_ID_P-H_max < P-H_stage3 nife_ID_P-H_max run function info_display:health_stage3
execute if score P-H_tot nife_ID_P-H_max >= P-H_stage3 nife_ID_P-H_max if score P-H_tot nife_ID_P-H_max < P-H_tot_max nife_ID_P-H_max run function info_display:health_stage4
execute if score P-H_tot nife_ID_P-H_max >= P-H_tot_max nife_ID_P-H_max run function info_display:health_stage5

execute as @a[scores={nife_ID_deaths=1}] run function info_display:player_death