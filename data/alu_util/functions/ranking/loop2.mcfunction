#> alu_util:ranking/loop2
# 順位付け
# @within function alu_util:ranking/loop

## 順位情報を保存
scoreboard players operation @s alu_util.ranking.output = rank _

## 処理済みであることを保存
tag @s add alu_util.ranking.done

## 同着を数える
scoreboard players add _ _ 1