execute if entity @s[tag=!working] store result score @s Work_dummy_CE run loot spawn ~ -2 ~ loot cookieeconomy:work_roll
execute if entity @s[tag=!working] run schedule function cookieeconomy:work_function 3600s
tag @s[scores={Work_CE=1..}] add working
scoreboard players set @s Work_CE 0