# Apply Slowness II to all nearby mobs in a ~2 block area for 3 seconds
effect give @e[distance=..3, type=!minecraft:armor_stand] minecraft:slowness 3 2 true

# Add snow particles
particle snowflake ~ ~0.5 ~ 1 1 1 0.01 30
particle cloud ~ ~0.2 ~ 0.5 0.5 0.5 0.05 20

# Optional: add a snow sound
playsound minecraft:block.snow.place ambient @a[distance=..8] ~ ~ ~

# Remove snowball
kill @s
