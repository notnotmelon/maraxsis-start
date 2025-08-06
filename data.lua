require "prototypes.a-breath-of-fresh-air"

data:extend {{
    type = "space-connection",
    name = "nauvis-maraxsis",
    from = "nauvis",
    to = "maraxsis",
    length = 20000,
    asteroid_spawn_definitions = table.deepcopy(data.raw["space-connection"]["nauvis-gleba"].asteroid_spawn_definitions),
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-tungsten-ore-dissolution",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "tungsten-carbide",      amount = 10},
        {type = "fluid", name = "maraxsis-saline-water", amount = 300},
    },
    results = {
        {type = "item", name = "tungsten-ore", amount = 5},
    },
    main_product = "tungsten-ore",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = false,
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-carbon-fiber-from-jelly",
    category = "organic-or-hand-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tungsten-carbide", amount = 1},
        {type = "item", name = "jelly",            amount = 10},
    },
    results = {
        {type = "item", name = "carbon-fiber", amount = 1},
    },
    main_product = "carbon-fiber",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = true,
    always_show_made_in = true,
    localised_name = {"item-name.carbon-fiber"},
    auto_recycle = false,
}}

APS.add_planet {name = "maraxsis", filename = "__maraxsis-start__/maraxsis.lua", technology = "planet-discovery-maraxsis"}
