#> alu_util:ranking/get
# 入力されたスコアについて昇順のランキングスコアを作る
# @public
# @input score $entity alu_util.ranking.input 順位付けに使うスコア
# @output score $entity alu_util.ranking.output 順位情報を返すスコア

#>
# @within function alu_util:ranking/**
    #declare tag alu_util.ranking.done すでにランクがついたプレイヤー
    #declare score_holder rank 順位
    #declare score_holder min 最小値

## タグを初期化
tag @e remove alu_util.ranking.done

## ランキング情報を初期化
scoreboard players reset * alu_util.ranking.output

## 順位情報
scoreboard players set rank _ 1

## ループ
function alu_util:ranking/loop

## タグリセット
tag @e remove alu_util.ranking.done

## スコアリセット
scoreboard players reset rank _
scoreboard players reset min _
scoreboard players reset * alu_util.ranking.input
