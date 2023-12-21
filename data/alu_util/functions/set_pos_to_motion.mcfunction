#> alu_util:set_pos_to_motion
# 実行座標をMotionに変換
# @public

## 計算用マーカー
summon marker ^ ^ ^ {UUID:[I;6,7,0,7]}

## Motionへ代入
data modify entity @s Motion set from entity 6-0-7-0-7 Pos

## マーカーをkill
kill 6-0-7-0-7
