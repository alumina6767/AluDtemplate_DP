#> raycast:init
# @internal

#>
# @public
    #declare score_holder #100
    #declare score_holder .itt

#>
# @internal
    #declare tag this
    #declare tag raycaster
    #declare score_holder #x
    #declare score_holder .x
    #declare score_holder #y
    #declare score_holder .y
    #declare score_holder #z
    #declare score_holder .z
    #declare score_holder #bool
    #declare score_holder #type
    #declare score_holder .type

scoreboard objectives add raycast dummy
scoreboard players set #100 raycast 100
