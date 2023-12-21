#> alu_timer:1/load
# load
# @internal

#>
# @public
    #declare objective timer.1

## インストール
scoreboard objectives add timer.1 dummy
execute unless score set timer.1 matches -2147483648..2147483647 run function alu_timer:1/install
