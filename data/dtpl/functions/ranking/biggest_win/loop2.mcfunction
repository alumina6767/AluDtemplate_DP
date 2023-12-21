#> dtpl:ranking/biggest_win/loop2
# loop2
# @within function dtpl:ranking/biggest_win/loop

## 音
execute as @a at @s run playsound entity.chicken.egg master @s ~ ~ ~ 1 1 0

## 色の設定
function dtpl:user_tag/get_user_color
data modify storage tmp color set from storage tmp return

## 演者名の取得
function dtpl:user_tag/get_user_name
data modify storage tmp name set from storage tmp return

## テキストを表示
tellraw @a [{"nbt":"color","storage": "tmp","interpret": true, "bold": true},"  ", {"nbt":"name","storage": "tmp"},"  ",{"score":{"name": "@s","objective": "dtpl.ranking.biggest_win.input"}},"\n"]
