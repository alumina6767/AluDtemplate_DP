#> alu_util:get_entity_id/_1
# 
# @within function alu_util:get_entity_id/
# @private

## 全てのエンティティから探索エンティティを呼び出し
$data modify storage alu_util: gei.type set from storage alu_util: all_entity_list[$(index)]

## 同一エンティティかチェック
function alu_util:get_entity_id/_2 with storage alu_util: gei

execute store result storage alu_util: gei.index int 1 run scoreboard players add index alu_util.gei 1
execute unless score no_of_entity_types alu_util.gei <= index alu_util.gei if data storage alu_util: {return:""} run function alu_util:get_entity_id/_1 with storage alu_util: gei
