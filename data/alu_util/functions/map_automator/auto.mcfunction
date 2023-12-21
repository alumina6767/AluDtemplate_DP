#> alu_util:map_automator/auto
# 地図上を探索
# @within function alu_util:map_automator/checker

scoreboard players add @s alu_util.map_automator_z 4

## 前にステップ
tp @s[scores={alu_util.map_automator_z=1..}] ~ ~ ~4

## 後ろにステップ
tp @s[scores={alu_util.map_automator_z=..0}] ~ ~ ~-4

## 端に来たら横にずれる
tp @s[scores={alu_util.map_automator_z=2048}] ~128 ~ ~
tp @s[scores={alu_util.map_automator_z=0}] ~128 ~ ~

## 端でステップの方向を反転
scoreboard players add @s[scores={alu_util.map_automator_z=2048..}] alu_util.map_automator_x 1
scoreboard players set @s[scores={alu_util.map_automator_z=2048..}] alu_util.map_automator_z -2048

## 数値を見て終了する
execute if score @s alu_util.map_automator_x matches 9 run function alu_util:map_automator/off

## 繰り返し
schedule function alu_util:map_automator/tick 1t replace
