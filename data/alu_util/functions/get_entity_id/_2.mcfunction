#> alu_util:get_entity_id/_2
# 
# @within function alu_util:get_entity_id/_1

## 同一エンティティかチェック
$execute if entity @s[type=$(type)] run data modify storage alu_util: return set value "$(type)"
