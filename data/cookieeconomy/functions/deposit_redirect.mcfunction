execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run tp @e[type=minecraft:villager,tag=CookieDetect,distance=..10,limit=1,sort=nearest] ^ ^0.29 ^2.1
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run tp @e[type=minecraft:villager,tag=CookieDetect2,distance=..10,limit=1,sort=nearest] ^0.6 ^0.29 ^2.1
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run tp @e[type=minecraft:villager,tag=CookieDetect3,distance=..10,limit=1,sort=nearest] ^-0.6 ^0.29 ^2.1

execute as @a at @s if entity @s[nbt=!{SelectedItem:{id:"minecraft:cookie"}},scores={Deposit_dummy_CE=2}] run kill @e[type=villager,tag=CookieDetect,distance=..10,limit=1]
execute as @a at @s if entity @s[nbt=!{SelectedItem:{id:"minecraft:cookie"}},scores={Deposit_dummy_CE=2}] run kill @e[type=villager,tag=CookieDetect2,distance=..10,limit=1]
execute as @a at @s if entity @s[nbt=!{SelectedItem:{id:"minecraft:cookie"}},scores={Deposit_dummy_CE=2}] run kill @e[type=villager,tag=CookieDetect3,distance=..10,limit=1]

execute as @a at @s if entity @s[nbt=!{SelectedItem:{id:"minecraft:cookie"}}] run scoreboard players set @s Deposit_dummy_CE 0

execute as @a if score @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] Deposit_CE matches 1.. run function cookieeconomy:deposit

execute as @a if entity @s[scores={Deposit_dummy_CE=2}] run schedule function cookieeconomy:deposit_redirect 1t