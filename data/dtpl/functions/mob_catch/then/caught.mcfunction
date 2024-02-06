#> dtpl:mob_catch/then/caught
# 捕まえたときの処理
# @within function dtpl:mob_catch/then/as_looking_entity

## 音
playsound entity.chicken.egg master @a ~ ~ ~ 1.0 1.0 0.0

## パーティクル
particle end_rod ~ ~ ~ 0 0 0 0.1 20 force

## スポーンエッグにデータをコピー
#スタックしなくなるのでデフォルトOFF
#data modify entity @e[type=item,tag=dtpl.mob_catch.new_egg,limit=1] Item.tag.EntityTag merge from entity @s

## タグを消す
tag @e[type=item,tag=dtpl.mob_catch.new_egg,sort=nearest,limit=1] remove dtpl.mob_catch.new_egg

## 元エンティティを消す
tp @s[type=!ender_dragon] ~ -10000 ~
data merge entity @s[type=!ender_dragon] {Health:0.0f}

## エンダードラゴンなぜか死なない時があるので近くのを殺す
execute if entity @s[type=ender_dragon] run kill @e[type=ender_dragon,distance=..10]
