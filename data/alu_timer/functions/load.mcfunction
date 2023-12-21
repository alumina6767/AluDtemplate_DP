#> alu_timer:load
# load
# @internal

scoreboard objectives add const dummy

#>
# @internal
    #declare score_holder _
    #declare score_holder 5
    #declare score_holder 10
    #declare score_holder 20
    #declare score_holder 60
    #declare score_holder set
    #declare score_holder val
    #declare score_holder max
    #declare score_holder power

#>
# @public
    #declare storage alu_timer
    #declare score_holder hide_timer

scoreboard objectives add _ dummy

scoreboard players set 5 const 5
scoreboard players set 10 const 10
scoreboard players set 20 const 20
scoreboard players set 60 const 60

function alu_timer:1/load
function alu_timer:2/load
function alu_timer:3/load

function alu_timer:template/load
