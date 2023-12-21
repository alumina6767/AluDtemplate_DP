#> dtpl:spawnpoint/main
# tick
# @within function dtpl:tick

## リスポーン地点を更新
execute as @a[predicate=dtpl:player] at @s at @e[type=marker,tag=dtpl.spawnpoint,distance=..5,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~ ~
