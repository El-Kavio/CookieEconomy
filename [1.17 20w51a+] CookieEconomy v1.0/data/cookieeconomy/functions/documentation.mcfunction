execute as @s at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1
tellraw @s ["",{"text":"Want to read the documentation?","color":"gold"},{"text":"\n"},{"text":"[Click Here]","color":"dark_green","clickEvent":{"action":"open_url","value":"https://github.com/El-Kavio/CookieEconomy/wiki"},"hoverEvent":{"action":"show_text","contents":"Open up the documentation"}}]
scoreboard players set @s Documentation_CE 0
scoreboard players set @s Wiki_CE 0