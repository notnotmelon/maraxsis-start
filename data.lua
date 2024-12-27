data:extend {{
    type = "space-connection",
    name = "nauvis-maraxsis",
    from = "nauvis",
    to = "maraxsis",
    length = 20000,
    asteroid_spawn_definitions = table.deepcopy(data.raw["space-connection"]["nauvis-gleba"].asteroid_spawn_definitions),
}}
