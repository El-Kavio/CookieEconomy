execute at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run summon minecraft:villager ~ ~4 ~ {NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,Age:0,ActiveEffects:[{Id:11,Amplifier:4,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1,Duration:2147483647,ShowParticles:0b}],Tags:["CookieDetect"]}
execute at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run summon minecraft:villager ~ ~4 ~ {NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,Age:0,ActiveEffects:[{Id:11,Amplifier:4,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1,Duration:2147483647,ShowParticles:0b}],Tags:["CookieDetect2"]}
execute at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cookie"}}] run summon minecraft:villager ~ ~4 ~ {NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,Age:0,ActiveEffects:[{Id:11,Amplifier:4,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:1,Duration:2147483647,ShowParticles:0b}],Tags:["CookieDetect3"]}

execute as @s run scoreboard players set @s Deposit_dummy_CE 2
execute as @s run function cookieeconomy:deposit_redirect