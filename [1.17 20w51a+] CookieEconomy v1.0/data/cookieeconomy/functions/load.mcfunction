tellraw @a ["",{"text":"COOKIE","color":"gold"},{"text":"ECONOMY","color":"dark_green"},{"text":" activated!","color":"green"}]

scoreboard objectives add Richest_CE dummy {"text":"Richest","bold":true,"color":"dark_green"}
scoreboard objectives setdisplay sidebar.team.gold Richest_CE
team add Richest
team modify Richest color gold

scoreboard objectives add Bet_CE trigger
scoreboard objectives add Gamble_limit_dummy_CE dummy
scoreboard objectives add Daytime_dummy_CE dummy
scoreboard objectives add Gamble_dummy_CE dummy


scoreboard objectives add Info_CE trigger

scoreboard objectives add Balance_CE trigger

scoreboard objectives add Deposit_CE minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add Deposit_dummy_CE dummy
scoreboard objectives add Deposit_Value_dummy_CE dummy

scoreboard objectives add Balance_switch_CE trigger

scoreboard objectives add TimeTracking_CE dummy

scoreboard objectives add Work_CE trigger
scoreboard objectives add Work_switch_CE trigger
scoreboard objectives add Work_dummy_CE dummy
scoreboard objectives add Work_dummy2_CE dummy

scoreboard objectives add Withdraw_CE trigger
scoreboard objectives add Withdraw_dummy_CE dummy

scoreboard objectives add Documentation_CE trigger
scoreboard objectives add Wiki_CE trigger