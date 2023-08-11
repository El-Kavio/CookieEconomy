scoreboard players set @s[tag=!working] Work_CE 2
tag @s[scores={Work_CE=2}] add working
execute as @s if entity @s[scores={Work_CE=2}] run scoreboard players set @s Work_dummy_CE 1
