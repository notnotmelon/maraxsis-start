-- starting items
-- sub
-- 10 hydrogen barrels
-- solar energy
-- power pole
-- processing unit for hydro plant
-- atmosphere barrels
-- 1 foundry

-- needed for progression:
-- electric mining drills for glass
-- tungsten for ducts
-- new atmosphere recipe
-- foundry & calcite for lava
-- tungsten carbide for foundry
-- sub fuel
-- uranium for salt reactor
-- carbon fiber

local utils = require("utils")

utils.set_prerequisites("maraxsis-glassworking", nil)
utils.set_prerequisites("foundry", {"maraxsis-glassworking"})
utils.set_prerequisites("big-mining-drill", {"foundry", "planet-discovery-vulcanus", "electric-mining-drill"})
utils.set_prerequisites("electronics", {"foundry"})
utils.set_prerequisites("maraxsis-salt-reactor", {"processing-unit", "uranium-processing", "maraxsis-hydro-plant", "maraxsis-glassworking"})
utils.set_prerequisites("maraxsis-hydro-plant", {"tungsten-steel"})
utils.set_prerequisites("uranium-processing", {"hydraulic-science-pack"})
utils.set_prerequisites("solar-energy", {"electronics"})
utils.set_prerequisites("automation-science-pack", {"solar-energy"})
utils.set_prerequisites("maraxsis-wyrm-confinement", {"steam-power", "maraxsis-piscary", "ducts"})
utils.set_prerequisites("steam-power", {"maraxsis-glassworking", "maraxsis-hydro-plant"})
utils.set_prerequisites("sp-spidertron-automation", {"foundry", "bulk-inserter"})
utils.set_prerequisites("plastics", {"electronics", "military"})
utils.set_prerequisites("processing-unit", {"maraxsis-wyrm-confinement"})
utils.set_prerequisites("tungsten-steel", {"foundry"})
utils.set_prerequisites("metallurgic-science-pack", {"big-mining-drill"})

utils.add_recipes("foundry", {"offshore-pump", "maraxsis-tungsten-ore"})
utils.add_recipes("uranium-processing", {"maraxsis-stone-centrifuging"})
utils.add_recipes("planet-discovery-nauvis", {"burner-mining-drill"})
utils.add_recipes("tree-seeding", {"small-electric-pole", "wooden-chest"})
utils.add_recipes("advanced-material-processing", {"burner-mining-drill"})
utils.add_recipes("maraxsis-hydro-plant", {"maraxsis-carbon-fiber-from-jelly"})
utils.add_recipes("plastics", {"maraxsis-microplastics", "maraxsis-smelt-microplastics"})
utils.add_recipes("processing-unit", {"sulfuric-acid"})
utils.add_recipes("military", {"piercing-rounds-magazine"})
utils.add_recipes("maraxsis-glassworking", {"maraxsis-atmosphere-not-free", "chemical-plant"})
utils.add_recipes("maraxsis-piscary", {"agricultural-tower"})

utils.remove_recipes("steam-power", {"offshore-pump"})
utils.remove_recipes("electric-energy-distribution-1", {"offshore-pump"})
utils.remove_recipes("maraxsis-piscary", {"maraxsis-microplastics", "maraxsis-smelt-microplastics"})
utils.remove_recipes("sulfur-processing", {"sulfur-processing"})
utils.remove_recipes("agriculture", {"agricultural-tower"})
utils.remove_recipes("oil-processing", {"chemical-plant"})

utils.set_trigger("foundry", {type = "mine-entity", entity = "maraxsis-polylplast"})
utils.set_trigger("solar-energy", {type = "craft-item", item = "electronic-circuit", count = 30})
utils.set_trigger("plastics", {type = "build-entity", entity = "stone-furnace"})
utils.set_trigger("advanced-circuit", {type = "craft-item", item = "plastic-bar", count = 10})
utils.set_trigger("processing-unit", {type = "craft-item", item = "sulfur", count = 10})
utils.set_trigger("steam-power", {type = "craft-item", item = "rocket-fuel", count = 10})
utils.set_trigger("tungsten-steel", {type = "craft-fluid", fluid = "molten-iron", amount = 100})
utils.set_trigger("electronics", {type = "craft-fluid", fluid = "molten-copper", amount = 100})

data.raw.tree["maraxsis-polylplast"].minable.results = {
    {
        type = "item",
        name = "maraxsis-coral",
        amount_min = 50,
        amount_max = 75,
    },
    {
        type = "item",
        name = "tungsten-carbide",
        amount_min = 500,
        amount_max = 750,
    }
}

for _, condition in pairs(data.raw.recipe["foundry"].surface_conditions) do
    if condition.paramter == "pressure" then
        condition.amount_min = 4000
        condition.amount_max = nil
    end
end

data:extend {{
    type = "recipe",
    name = "maraxsis-tungsten-ore",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tungsten-carbide", amount = 10},
        {type = "fluid", name = "maraxsis-saline-water", amount = 300},
    },
    results = {
        {type = "item", name = "tungsten-ore", amount = 5},
    },
    main_product = "tungsten-ore",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = false,
    localised_name = {"item-name.tungsten-ore"}
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-carbon-fiber-from-jelly",
    category = "organic-or-hand-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tungsten-carbide", amount = 1},
        {type = "item", name = "jelly", amount = 10},
    },
    results = {
        {type = "item", name = "carbon-fiber", amount = 1},
    },
    main_product = "carbon-fiber",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = true,
    localised_name = {"item-name.carbon-fiber"}
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-atmosphere-not-free",
    category = "maraxsis-hydro-plant",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "maraxsis-oxygen", amount = 100},
        {type = "fluid", name = "maraxsis-hydrogen", amount = 200},
    },
    results = {
        {type = "fluid", name = "maraxsis-atmosphere", amount = 300},
    },
    main_product = "maraxsis-atmosphere",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = true,
    localised_name = {"fluid-name.atmosphere"}
}}

-- increase the yield of the stone centrifuging recipe by 10x.
data.raw.recipe["maraxsis-stone-centrifuging"].ingredients[1].amount = 1
data.raw.technology["maraxsis-stone-centrifuging"].hidden = true

data.raw.recipe["small-electric-pole"].enabled = false
data.raw.recipe["wooden-chest"].enabled = false
data.raw.recipe["burner-mining-drill"].enabled = false

utils.set_unit("sp-spidertron-automation", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
    },
    count = 100,
})

utils.set_unit("maraxsis-salt-reactor", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"hydraulic-science-pack",  1},
    },
    count = 500,
})

utils.set_unit("uranium-processing", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"hydraulic-science-pack",  1},
    },
    count = 500,
})

utils.set_unit("hydraulic-science-pack", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
    },
    count = 500,
})
