#> alu_util:get_pos
# 実行場所の座標を特定のスコアに代入する
# @public

## 計算用マーカー
summon marker ^ ^ ^ {UUID:[I;6,7,0,7]}

## 一旦ストレージに代入
data modify storage tmp Pos set from entity 00000006-0000-0007-0000-000000000007 Pos

## スコアへ代入
execute store result score x _ run data get storage tmp Pos[0] 1000.0
execute store result score y _ run data get storage tmp Pos[1] 1000.0
execute store result score z _ run data get storage tmp Pos[2] 1000.0

## マーカーをkill
kill 00000006-0000-0007-0000-000000000007

## ストレージを削除
#data remove storage tmp Pos