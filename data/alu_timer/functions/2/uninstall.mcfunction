#> alu_timer:2/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.2

## ボスバーの削除
bossbar remove timer.2

## ストレージの削除
data remove storage alu_timer 2
