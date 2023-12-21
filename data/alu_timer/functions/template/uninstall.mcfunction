#> alu_timer:template/uninstall
# リセット
# @internal

## スコアボードの削除
scoreboard objectives remove timer.template

## ボスバーの削除
bossbar remove timer.template

## ストレージの削除
data remove storage alu_timer template
