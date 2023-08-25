execute as @a if entity @s[scores={Info_CE=1..}] run function cookieeconomy:trigger/info

execute as @a if entity @s[scores={Balance_CE=1..}] run function cookieeconomy:trigger/balance

execute as @a if entity @s[scores={Bet_CE=1..}] run function cookieeconomy:gamble

execute as @a if entity @s[scores={Deposit_dummy_CE=1}] run function cookieeconomy:deposit_detect

execute as @a if entity @s[scores={Balance_switch_CE=1}] run function cookieeconomy:trigger/balance_switch
execute as @a if entity @s[scores={Balance_switch_CE=3}] run function cookieeconomy:trigger/balance_switch

execute as @a if entity @s[scores={Work_CE=1}] run function cookieeconomy:work
execute as @a if entity @s[scores={Work_dummy_CE=1}] run schedule function cookieeconomy:work_function 3600s
execute as @s[scores={Work_dummy_CE=1}] run scoreboard players set @s Work_dummy_CE 0

execute as @a if entity @s[scores={Work_switch_CE=1..}] run function cookieeconomy:trigger/work_switch

execute as @a if entity @s[scores={Withdraw_CE=1..}] run function cookieeconomy:trigger/withdraw
execute as @a if entity @s[scores={Withdraw_dummy_CE=1..}] run function cookieeconomy:withdraw_function

execute as @a if entity @s[scores={Documentation_CE=1..}] run function cookieeconomy:documentation
execute as @a if entity @s[scores={Wiki_CE=1..}] run function cookieeconomy:documentation