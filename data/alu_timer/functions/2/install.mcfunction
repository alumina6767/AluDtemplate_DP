#> alu_timer:2/install
# 導入時一度だけ実行
# @within alu_timer:2/load

## スコアボードの初期化
scoreboard players set set timer.2 600
scoreboard players set power timer.2 0

## ボスバーの定義
bossbar add timer.2 ""

## ボスバーの名前
data modify storage alu_timer 2.name set value '[{"text":"タイマータイトル","color":"red","bold":true}]'
bossbar set timer.2 name {"storage": "alu_timer","nbt":"2.name","interpret": true}

## ボスバーの色
bossbar set timer.2 color red

## 非表示
bossbar set timer.2 visible false

## タイマーを隠すか
scoreboard players set hide_timer timer.2 0
