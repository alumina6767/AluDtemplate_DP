#> right_click:crossbow/clicked
# クリック後
# @internal

function right_click:store_cmd
function #right_click:crossbow_click
scoreboard players add @s main_hand.hold_time 1

advancement revoke @s only right_click:crossbow/is_click