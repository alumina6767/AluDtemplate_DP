#> right_click:tick
# 毎tick処理

## 長押し時間を計測
execute as @a if score @s main_hand.hold_time.before = @s main_hand.hold_time run scoreboard players set @s main_hand.hold_time 0
execute as @a run scoreboard players operation @s main_hand.hold_time.before = @s main_hand.hold_time

## 歪んだキノコ付きの棒
execute as @a[scores={rc_wfs=1..}] run function right_click:wfs/clicked

## ニンジン付きの棒
execute as @a[scores={rc_cs=1..}] run function right_click:cs/clicked
