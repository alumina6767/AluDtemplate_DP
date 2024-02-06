#> dtpl:tp/back_to_start/backto
# 初期地点に帰る
# @within function dtpl:tp/back_to_start/if

effect give @s blindness 1 0 true
tp @s @e[type=marker,tag=dtpl.tp.back_to_start,limit=1]
