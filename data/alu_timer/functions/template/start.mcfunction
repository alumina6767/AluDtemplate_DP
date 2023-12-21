#> alu_timer:template/start
# start
# @public

## ボスバーの表示
bossbar add timer.template ""
bossbar set timer.template name {"storage": "alu_timer","nbt":"template.name","interpret": true}
bossbar set timer.template color red
bossbar set timer.template players @a
bossbar set timer.template visible true

## tickに変換
scoreboard players operation _ timer.template = set timer.template
scoreboard players operation _ timer.template *= 20 const 
scoreboard players operation val timer.template = _ timer.template
scoreboard players operation max timer.template = _ timer.template
execute store result bossbar timer.template max run scoreboard players get max timer.template

## タイマーを開始
scoreboard players set power timer.template 1