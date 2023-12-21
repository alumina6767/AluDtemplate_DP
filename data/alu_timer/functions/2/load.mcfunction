#> alu_timer:2/load
# load
# @internal

#>
# @public
    #declare objective timer.2

## インストール
scoreboard objectives add timer.2 dummy
execute unless score set timer.2 matches -2147483648..2147483647 run function alu_timer:2/install
