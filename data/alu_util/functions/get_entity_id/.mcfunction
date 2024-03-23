#> alu_util:get_entity_id/
# 実行主のエンティティIDを取得する
# @api
# @input 実行主
# @output storage alu_util: return

#> 
# @within function alu_util:get_entity_id/**
    scoreboard objectives add alu_util.gei dummy
    #declare score_holder index リスト用index
    #declare score_holder no_of_entity_types エンティティの種類の総数

## 返り値初期化
data modify storage alu_util: return set value ""

execute store result score no_of_entity_types alu_util.gei run data get storage alu_util: all_entity_list
execute store result storage alu_util: gei.index int 1 run scoreboard players set index alu_util.gei 0

## 探索
function alu_util:get_entity_id/_1 with storage alu_util: gei

## スコアボードの削除
scoreboard objectives remove alu_util.gei
