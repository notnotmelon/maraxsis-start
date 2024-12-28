local utils = require("__any-planet-start__.utils")

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
utils.set_prerequisites("sp-spidertron-automation", {"processing-unit", "tungsten-steel", "engine", "bulk-inserter", "fluid-handling"})
utils.set_prerequisites("ducts", {"tungsten-steel", "fluid-handling"})
utils.set_prerequisites("plastics", {"electronics", "military"})
utils.set_prerequisites("processing-unit", {"sulfur-processing", "advanced-circuit"})
utils.set_prerequisites("tungsten-steel", {"electronics"})
utils.set_prerequisites("metallurgic-science-pack", {"big-mining-drill", "calcite-processing", "tungsten-carbide"})
utils.set_prerequisites("maraxsis-piscary", {"landfill", "plastics", "electric-mining-drill"})
utils.set_prerequisites("sulfur-processing", {"maraxsis-wyrm-confinement"})
utils.set_prerequisites("coal-liquefaction", {"maraxsis-piscary"})
utils.set_prerequisites("oil-gathering", {"space-science-pack"})
utils.set_prerequisites("planet-discovery-nauvis", {"oil-gathering", "space-platform-thruster"})
utils.set_prerequisites("planet-discovery-vulcanus", {"oil-gathering", "space-platform-thruster"})
utils.set_prerequisites("advanced-oil-processing", {"oil-processing", "production-science-pack"})
utils.set_prerequisites("rocket-silo", {"processing-unit", "logistic-robotics", "advanced-material-processing-2", "maraxsis-project-seadragon"})
utils.set_prerequisites("lubricant", {"coal-liquefaction"})
utils.set_prerequisites("hydraulic-science-pack", {"maraxsis-wyrm-confinement", "chemical-science-pack"})
utils.set_prerequisites("automobilism", {"space-science-pack"})
utils.set_prerequisites("nuclear-power", {"kovarex-enrichment-process"})
utils.set_prerequisites("fission-reactor-equipment", {"maraxsis-salt-reactor", "power-armor", "utility-science-pack", "military-science-pack"})
utils.set_prerequisites("oil-processing", {"planet-discovery-nauvis", "oil-gathering"})
utils.set_prerequisites("rocket-fuel", {"oil-processing"})
utils.set_prerequisites("railway", {"elevated-rail", "engine", "logistics-2"})
utils.set_prerequisites("production-science-pack", {"productivity-module", "advanced-material-processing-2"})
utils.set_prerequisites("maraxsis-deepsea-research", {"military-science-pack", "production-science-pack", "utility-science-pack"})
utils.set_prerequisites("maraxsis-sonar", {"radar"})
utils.set_prerequisites("radar", {"hydraulic-science-pack"})
utils.set_prerequisites("maraxsis-super-sealant-substance-productivity", {"hydraulic-science-pack", "utility-science-pack"})

utils.add_recipes("foundry", {"offshore-pump"})
utils.add_recipes("uranium-processing", {"maraxsis-stone-centrifuging", "uranium-fuel-cell"})
utils.add_recipes("planet-discovery-nauvis", {"burner-mining-drill"})
utils.add_recipes("tree-seeding", {"small-electric-pole", "wooden-chest"})
utils.add_recipes("advanced-material-processing", {"burner-mining-drill"})
utils.add_recipes("maraxsis-hydro-plant", {"maraxsis-carbon-fiber-from-jelly"})
utils.add_recipes("plastics", {"maraxsis-microplastics", "maraxsis-smelt-microplastics"})
utils.add_recipes("military", {"piercing-rounds-magazine"})
utils.add_recipes("maraxsis-glassworking", {"maraxsis-atmosphere-not-free"})
utils.add_recipes("electronics", {"chemical-plant", "medium-electric-pole"})
utils.add_recipes("tungsten-steel", {"maraxsis-tungsten-ore"})
utils.add_recipes("biochamber", {"maraxsis-nutrients-from-tropical-fish"})
utils.add_recipes("low-density-structure", {"casting-low-density-structure"})
utils.add_recipes("coal-liquefaction", {"coal-synthesis", "simple-coal-liquefaction", "heavy-oil-cracking", "light-oil-cracking", "oil-refinery"})
utils.add_recipes("sp-spidertron-automation", {"maraxsis-diesel-submarine"})
utils.add_recipes("foundry", {"maraxsis-limestone-processing"})
utils.add_recipes("space-platform-thruster", {"maraxsis-atmosphere"})
utils.add_recipes("production-science-pack", {"rail"})

utils.remove_recipes("steam-power", {"offshore-pump"})
utils.remove_recipes("nuclear-power", {"uranium-fuel-cell"})
utils.remove_recipes("maraxsis-piscary", {"maraxsis-microplastics", "maraxsis-smelt-microplastics", "maraxsis-nutrients-from-tropical-fish"})
utils.remove_recipes("sulfur-processing", {"sulfur-processing"})
utils.remove_recipes("oil-processing", {"chemical-plant"})
utils.remove_recipes("electronics", {"small-electric-pole"})
utils.remove_recipes("rocket-turret", {"coal-synthesis"})
utils.remove_recipes("calcite-processing", {"simple-coal-liquefaction"})
utils.remove_recipes("electric-energy-distribution-1", {"medium-electric-pole"})
utils.remove_recipes("advanced-oil-processing", {"heavy-oil-cracking", "light-oil-cracking"})
utils.remove_recipes("maraxsis-glassworking", {"maraxsis-limestone-processing", "maraxsis-atmosphere"})
utils.remove_recipes("railway", {"rail"})
utils.remove_recipes("foundry", {"casting-low-density-structure"})
utils.remove_recipes("planet-discovery-maraxsis", {"maraxsis-diesel-submarine"})

utils.set_trigger("foundry", {type = "mine-entity", entity = "maraxsis-polylplast"})
utils.set_trigger("solar-energy", {type = "craft-item", item = "electronic-circuit", count = 30})
utils.set_trigger("steam-power", {type = "craft-item", item = "rocket-fuel", count = 100})
utils.set_trigger("tungsten-steel", {type = "build-entity", entity = "chemical-plant"})
utils.set_trigger("electronics", {type = "craft-fluid", fluid = "molten-copper", amount = 100})
utils.set_trigger("maraxsis-hydro-plant", {type = "craft-item", item = "tungsten-plate", amount = 50})

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

data:extend {{
    type = "recipe",
    name = "maraxsis-tungsten-ore",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tungsten-carbide",      amount = 5},
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
        {type = "item", name = "jelly",            amount = 10},
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
        {type = "fluid", name = "maraxsis-oxygen", amount = 150},
        {type = "item",  name = "calcite",         amount = 1},
    },
    results = {
        {type = "fluid", name = "maraxsis-atmosphere", amount = 300, temperature = 25},
    },
    main_product = "maraxsis-atmosphere",
    allow_recycling = false,
    allow_decomposition = false,
    allow_productivity = true,
    localised_name = {"fluid-name.maraxsis-atmosphere"}
}}

-- increase the yield of the stone centrifuging recipe by 10x.
data.raw.recipe["maraxsis-stone-centrifuging"].ingredients[1].amount = 1
data.raw.technology["maraxsis-stone-centrifuging"].hidden = true

data.raw.recipe["small-electric-pole"].enabled = false
data.raw.recipe["wooden-chest"].enabled = false
data.raw.recipe["burner-mining-drill"].enabled = false
data.raw.recipe["maraxsis-diesel-submarine"].enabled = false

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

utils.set_unit("maraxsis-piscary", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
    },
    count = 100,
})

utils.set_unit("coal-liquefaction", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
    },
    count = 100,
})

utils.set_unit("oil-gathering", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 100,
})

utils.set_unit("advanced-oil-processing", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
        {"production-science-pack", 1},
    },
    count = 1000,
})

utils.set_unit("flammables", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 200,
})

utils.set_unit("flamethrower", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"military-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 200,
})

utils.set_unit("rocketry", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"military-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 500,
})

utils.set_unit("explosive-rocketry", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"military-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
        {"utility-science-pack",    1},
    },
    count = 500,
})

utils.set_unit("automobilism", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 500,
})

utils.set_unit("tank", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"military-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
    },
    count = 1000,
})

utils.set_unit("nuclear-power", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"space-science-pack",      1},
        {"utility-science-pack",    1},
    },
    count = 1000,
})

utils.set_unit("ducts", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
    },
    count = 100,
})

utils.set_unit("railway", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"production-science-pack", 1},
    },
    count = 100,
})

utils.set_unit("automated-rail-transportation", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"production-science-pack", 1},
    },
    count = 100,
})

utils.set_unit("fluid-wagon", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"production-science-pack", 1},
    },
    count = 100,
})

utils.set_unit("processing-unit", {
    time = 30,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
    },
    count = 100,
})

utils.set_unit("radar", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"hydraulic-science-pack",  1},
    },
    count = 100,
})

utils.set_unit("maraxsis-sonar", {
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack",   1},
        {"chemical-science-pack",   1},
        {"hydraulic-science-pack",  1},
    },
    count = 100,
})

table.insert(data.raw["technology"]["planet-discovery-aquilo"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["captive-biter-spawner"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["foundation"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["legendary-quality"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["quantum-processor"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["railgun"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["fusion-reactor"].unit.ingredients, {"hydraulic-science-pack", 1})
table.insert(data.raw["technology"]["fusion-reactor-equipment"].unit.ingredients, {"hydraulic-science-pack", 1})

table.insert(data.raw.technology["maraxsis-hydro-plant"].effects, {
    type = "unlock-quality",
    quality = "uncommon",
})

table.insert(data.raw.technology["maraxsis-hydro-plant"].effects, {
    type = "unlock-quality",
    quality = "rare",
})

-- remove processing units from hydro plant
local new_ingredients = {}
for _, ingredient in pairs(data.raw.recipe["maraxsis-hydro-plant"].ingredients) do
    if ingredient.name ~= "processing-unit" then
        table.insert(new_ingredients, ingredient)
    end
end
table.insert(new_ingredients, {type = "item", name = "electronic-circuit", amount = 10})
data.raw.recipe["maraxsis-hydro-plant"].ingredients = new_ingredients

-- remove agricultural tower from fishing tower
local new_ingredients = {}
for _, ingredient in pairs(data.raw.recipe["maraxsis-fishing-tower"].ingredients) do
    if ingredient.name ~= "agricultural-tower" then
        table.insert(new_ingredients, ingredient)
    end
end
table.insert(new_ingredients, {type = "item", name = "steel-plate", amount = 10})
table.insert(new_ingredients, {type = "item", name = "electronic-circuit", amount = 10})
data.raw.recipe["maraxsis-fishing-tower"].ingredients = new_ingredients

-- remove steel and green chips from agricultural tower
local new_ingredients = {}
for _, ingredient in pairs(data.raw.recipe["agricultural-tower"].ingredients) do
    if ingredient.name ~= "steel-plate" and ingredient.name ~= "electronic-circuit" then
        table.insert(new_ingredients, ingredient)
    end
end
table.insert(new_ingredients, {type = "item", name = "maraxsis-fishing-tower", amount = 1})
data.raw.recipe["agricultural-tower"].ingredients = new_ingredients

-- remove refined concrete and lube from foundry
local new_ingredients = {}
for _, ingredient in pairs(data.raw.recipe["foundry"].ingredients) do
    if ingredient.name ~= "refined-concrete" and ingredient.name ~= "lubricant" then
        table.insert(new_ingredients, ingredient)
    end
end
table.insert(new_ingredients, {type = "item", name = "concrete", amount = 20})
data.raw.recipe["foundry"].ingredients = new_ingredients

-- remove electric engine unit from submarine
local new_ingredients = {}
for _, ingredient in pairs(data.raw.recipe["maraxsis-diesel-submarine"].ingredients) do
    if ingredient.name ~= "electric-engine-unit" then
        table.insert(new_ingredients, ingredient)
    end
end
table.insert(new_ingredients, {type = "item", name = "engine-unit", amount = 10})
data.raw.recipe["maraxsis-diesel-submarine"].ingredients = new_ingredients

for _, condition in pairs(data.raw.recipe["foundry"].surface_conditions) do
    if condition.property == "pressure" then
        condition.min = 4000
        condition.max = nil
    end
end

table.insert(data.raw["technology"]["foundry"].effects, {
    type = "give-item",
    item = "foundry"
})