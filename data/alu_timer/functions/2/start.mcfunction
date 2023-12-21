#> alu_timer:2/start
# start
# @public

## ボスバーの表示
bossbar set timer.2 name {"storage": "alu_timer","nbt":"2.name","interpret": true}
bossbar set timer.2 visible true
bossbar set timer.2 players @a

## tickに変換
scoreboard players operation _ timer.2 = set timer.2
scoreboard players operation _ timer.2 *= 20 const 
scoreboard players operation val timer.2 = _ timer.2
scoreboard players operation max timer.2 = _ timer.2
execute store result bossbar timer.2 max run scoreboard players get max timer.2

## タイマーを開始
scoreboard players set power timer.2 1