#> alu_timer:1/install
# 導入時一度だけ実行
# @within alu_timer:1/load

## スコアボードの初期化
scoreboard players set set timer.1 600
scoreboard players set power timer.1 0

## ボスバーの定義
bossbar add timer.1 ""

## ボスバーの名前
data modify storage alu_timer 1.name set value '[{"text":"タイマータイトル","color":"red","bold":true}]'
bossbar set timer.1 name {"storage": "alu_timer","nbt":"1.name","interpret": true}

## ボスバーの色
bossbar set timer.1 color red

## 非表示
bossbar set timer.1 visible false

## タイマーを隠すか
scoreboard players set hide_timer timer.1 0
