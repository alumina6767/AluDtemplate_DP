#> dtpl:ranking/biggest_win/loop
# loop
# @within function dtpl:ranking/biggest_win/show_result
# @private

## 今のランキングのプレイヤーを表示
execute as @a if score @s alu_util.ranking.output = rank _ run function dtpl:ranking/biggest_win/loop2

## 次の順位へ移動
scoreboard players remove rank _ 1

## ランキングを表示しきるまで繰り返す
execute if score rank _ matches 1.. run schedule function dtpl:ranking/biggest_win/loop 1.0s replace

## スコアリセット
execute if score rank _ matches 0 run scoreboard players reset * dtpl.ranking.biggest_win.input
