#> alu_timer:3/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.3

## ボスバーの削除
bossbar remove timer.3

## ストレージの削除
data remove storage alu_timer 3
