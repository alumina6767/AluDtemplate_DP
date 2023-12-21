#> alu_timer:1/start
# start
# @public

## ボスバーの表示
bossbar set timer.1 name {"storage": "alu_timer","nbt":"1.name","interpret": true}
bossbar set timer.1 visible true
bossbar set timer.1 players @a

## tickに変換
scoreboard players operation _ timer.1 = set timer.1
scoreboard players operation _ timer.1 *= 20 const 
scoreboard players operation val timer.1 = _ timer.1
scoreboard players operation max timer.1 = _ timer.1
execute store result bossbar timer.1 max run scoreboard players get max timer.1

## タイマーを開始
scoreboard players set power timer.1 1