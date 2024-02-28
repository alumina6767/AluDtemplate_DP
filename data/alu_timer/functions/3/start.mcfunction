#> alu_timer:3/start
# start
# @public

## ボスバーの表示
bossbar set timer.3 name {"storage": "alu_timer","nbt":"3.name","interpret": true}
bossbar set timer.3 visible true
bossbar set timer.3 players @a

## tickに変換
scoreboard players operation _ timer.3 = set timer.3
scoreboard players operation _ timer.3 *= 20 const 
scoreboard players operation val timer.3 = _ timer.3
scoreboard players operation max timer.3 = _ timer.3
execute store result bossbar timer.3 max run scoreboard players get max timer.3

## タイマーを開始
scoreboard players set power timer.3 1
