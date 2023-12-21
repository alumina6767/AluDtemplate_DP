#> alu_timer:3/load
# load
# @internal

#>
# @public
    #declare objective timer.3

## インストール
scoreboard objectives add timer.3 dummy
execute unless score set timer.3 matches -2147483648..2147483647 run function alu_timer:3/install
