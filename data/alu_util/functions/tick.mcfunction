#> alu_util:tick
# tick
# @internal

## スニーク時
    execute as @a[predicate=alu_util:is_sneak] run function alu_util:sneaking

## 右手に持っているアイテムについての処理
    #execute as @a at @s run function dtpl:alu_util/check_main_hand

## markerの表示
    execute if predicate alu_util:chance/0.5 if entity @a[scores={alu_util.is_visible_marker=1}] run function alu_util:visible_marker/main
