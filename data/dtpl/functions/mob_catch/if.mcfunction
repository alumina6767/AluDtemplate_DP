#> dtpl:mob_catch/if
# アイテム判定
# @within tag/function right_click:**
# @within function dtpl:mob_catch/interact_entity

execute if entity @s[scores={main_hand=99}] at @s anchored eyes run function dtpl:mob_catch/then/
