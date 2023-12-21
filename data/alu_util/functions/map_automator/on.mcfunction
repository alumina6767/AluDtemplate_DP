#> alu_util:map_automator/on
# 処理の開始
# @user

## 初期化
function alu_util:map_automator/load

scoreboard players set @s alu_util.map_automator.doing 1
scoreboard players set @s alu_util.map_automator_z 0
scoreboard players set @s alu_util.map_automator_x 0

## 探索ループ開始
schedule function alu_util:map_automator/tick 1t append
