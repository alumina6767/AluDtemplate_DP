#> alu_timer:1/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.1

## ボスバーの削除
bossbar remove timer.1

## ストレージの削除
data remove storage alu_timer 1
