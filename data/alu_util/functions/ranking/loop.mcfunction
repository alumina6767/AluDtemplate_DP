#> alu_util:ranking/loop
# ループ
# @within function alu_util:ranking/get
# @private

## 探索スコアの初期化
scoreboard players set min _ 2147483647

## 処理されていないプレイヤーの最小値を探す
scoreboard players operation min _ < @e[scores={alu_util.ranking.input=-2147483648..2147483647},tag=!alu_util.ranking.done] alu_util.ranking.input

## 同着が何人いるか数える
scoreboard players set _ _ 0

## 最小値と同じ値を持ってるプレイヤーを探す
execute as @e[scores={alu_util.ranking.input=-2147483648..2147483647},tag=!alu_util.ranking.done] if score @s alu_util.ranking.input = min _ run function alu_util:ranking/loop2

## 順位を進める
execute if entity @e[scores={alu_util.ranking.input=-2147483648..2147483647},tag=!alu_util.ranking.done] run scoreboard players operation rank _ += _ _

## ループ
execute if entity @e[scores={alu_util.ranking.input=-2147483648..2147483647},tag=!alu_util.ranking.done] run function alu_util:ranking/loop
#execute unless entity @a[scores={alu_util.ranking.input=-2147483648..2147483647},tag=!alu_util.ranking.done] run schedule function tsa:minigame/pittari/show_result/show_winner 1s replace
