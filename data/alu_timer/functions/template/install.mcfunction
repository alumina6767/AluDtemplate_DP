#> alu_timer:template/install
# 導入時一度だけ実行
# @within alu_timer:template/load

## スコアボードの初期化
scoreboard players set set timer.template 600
scoreboard players set power timer.template 0

## ボスバーの名前
data modify storage alu_timer template.name set value '[{"text":"タイマータイトル","color":"red","bold":true}]'
