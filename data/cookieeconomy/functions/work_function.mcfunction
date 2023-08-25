execute as @a if entity @s run tag @s remove working
execute as @a if entity @s[scores={Work_CE=3}] store result score @s Work_dummy2_CE run loot spawn ~ -2 ~ loot cookieeconomy:work_roll

execute as @a run scoreboard players operation @s[scores={Work_CE=3}] Richest_CE += @s[scores={Work_CE=3}] Work_dummy2_CE

execute as @a if entity @s[tag=!work_switch,scores={Balance_CE=..5,Work_CE=3}] run tellraw @s[tag=!work_switch] ["",{"text":"You can work again!","color":"gold"},{"text":"\n[Click Here]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger Work_CE"},"hoverEvent":{"action":"show_text","contents":"Gets you back to work!"}}]
execute as @a at @s if entity @s[tag=!work_switch,scores={Balance_CE=..5,Work_CE=3}] run playsound minecraft:entity.fox.ambient master @s ~ ~ ~ 1 1.1

execute as @a if entity @s[scores={Work_CE=2..3}] run scoreboard players add @s[scores={Work_CE=2..3}] Work_CE 1
execute as @a if entity @s[scores={Work_CE=4}] run scoreboard players set @s[scores={Work_CE=4}] Work_CE 0
execute as @a if entity @s[scores={Work_switch_CE=0}] run scoreboard players set @s Work_switch_CE 1

execute as @a if entity @s[scores={Work_CE=3}] run schedule function cookieeconomy:work_function 1t