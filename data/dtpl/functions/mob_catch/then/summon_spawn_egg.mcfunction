#> dtpl:mob_catch/then/summon_spawn_egg
# スポーンエッグの召喚
# @within function dtpl:mob_catch/then/as_looking_entity

## スポーンエッグの種類の変更
$data merge entity @s {Item:{id:"minecraft:$(type)_spawn_egg",Count:1b}}

## NBTデータの代入
data modify entity @s Item.tag.EntityTag merge from storage tmp spawn_egg_data


## 探索用タグを削除
tag @s remove dtpl.mob_catch.new_egg
