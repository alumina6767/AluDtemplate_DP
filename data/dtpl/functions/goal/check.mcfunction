#> dtpl:goal/check
#
# ３人がゴールしたらみたいなゴール判定を行う
#
# @input
#   tag: 額縁についているタグ
#   function: ゴール時に実行されるfunction 
#
# @public


## 初期化
scoreboard players set _ _ 1

## 額縁の個数を取得
$execute store result score _ _ if entity @e[type=item_frame,tag=$(tag)]

## なかったら終了
execute if score _ _ matches 0 run return 0

## 条件を満たした個数をチェック
$execute as @e[type=item_frame,tag=$(tag)] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[predicate=dtpl:player,dx=0] run scoreboard players remove _ _ 1

## ゴール時
$execute if score _ _ matches 0 run function $(function)
