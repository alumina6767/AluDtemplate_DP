#> alu_timer:3/install
# 導入時一度だけ実行
# @within alu_timer:3/load

## スコアボードの初期化
scoreboard players set set timer.3 600
scoreboard players set power timer.3 0

## ボスバーの定義
bossbar add timer.3 ""

## ボスバーの名前
data modify storage alu_timer 3.name set value '[{"text":"タイマータイトル","color":"red","bold":true}]'
bossbar set timer.3 name {"storage": "alu_timer","nbt":"3.name","interpret": true}

## ボスバーの色
bossbar set timer.3 color red

## 非表示
bossbar set timer.3 visible false

## タイマーを隠すか
scoreboard players set hide_timer timer.3 0
