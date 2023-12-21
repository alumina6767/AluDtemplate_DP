#> alu_util:visible_marker/main
# tick
# @within function alu_util:tick

## Markerの位置と向きをパーティクルで表示
    execute as @e[type=marker] at @s if entity @a[scores={alu_util.is_visible_marker=1},distance=..200] run particle flame ~ ~ ~ ^ ^ ^10000 0.00001 0 force @a[scores={alu_util.is_visible_marker=1},distance=..200]
