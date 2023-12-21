#> right_click:spyglass/clicked
# クリック後
# @internal

function right_click:store_cmd
function #right_click:spyglass
scoreboard players add @s main_hand.hold_time 1

advancement revoke @s only right_click:spyglass/is_click