scoreboard objectives add snowball_use minecraft.used:minecraft.snowball


execute as @a[tag=snow_hat_wearer,scores={snowball_use=1..}] run function hoyo_hats:mark_snowball
