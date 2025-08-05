local utils = require("__any-planet-start__.utils")

local k2 = mods["Krastorio2-spaced-out"] or mods["Krastorio2"]

utils.set_prerequisites("maraxsis-glassworking", nil)
utils.set_prerequisites("foundry", {"maraxsis-glassworking"})
utils.set_prerequisites("big-mining-drill", {"foundry", "planet-discovery-vulcanus", "electric-mining-drill"})
utils.set_prerequisites("electronics", {"foundry"})
utils.set_prerequisites("maraxsis-salt-reactor", {"processing-unit", "nuclear-power", "maraxsis-hydro-plant", "maraxsis-glassworking"})
utils.set_prerequisites("maraxsis-hydro-plant", {"tungsten-steel"})
utils.set_prerequisites("uranium-processing", {"hydraulic-science-pack"})
utils.set_prerequisites("solar-energy", {"electronics"})
utils.set_prerequisites("automation-science-pack", {"solar-energy"})
utils.set_prerequisites("maraxsis-wyrm-confinement", {"steam-power", "maraxsis-piscary"})
utils.set_prerequisites("steam-power", {"concrete"})
utils.set_prerequisites("ducts", {"cliff-explosives"})
utils.set_prerequisites("plastics", {"lubricant", "logistic-science-pack"})
utils.set_prerequisites("processing-unit", {"sulfur-processing", "advanced-circuit"})
utils.set_prerequisites("tungsten-steel", {"electronics"})
utils.set_prerequisites("metallurgic-science-pack", {"big-mining-drill", "calcite-processing", "tungsten-carbide"})
utils.set_prerequisites("maraxsis-piscary", {"landfill", "plastics", "electric-mining-drill"})
utils.set_prerequisites("sulfur-processing", {"ducts"})
utils.set_prerequisites("coal-liquefaction", {"maraxsis-piscary"})
utils.set_prerequisites("oil-gathering", {"space-science-pack"})
utils.set_prerequisites("planet-discovery-nauvis", {"oil-gathering", "space-platform-thruster"})
utils.set_prerequisites("planet-discovery-vulcanus", {"oil-gathering", "space-platform-thruster"})
utils.set_prerequisites("oil-processing", {"planet-discovery-nauvis", "oil-gathering"})
utils.set_prerequisites("advanced-oil-processing", {"oil-processing", "production-science-pack"})
utils.set_prerequisites("rocket-silo", {"processing-unit", "logistic-robotics", "advanced-material-processing-2", "maraxsis-project-seadragon"})
utils.set_prerequisites("lubricant", {"coal-liquefaction"})
utils.set_prerequisites("hydraulic-science-pack", {"maraxsis-wyrm-confinement", "chemical-science-pack"})
utils.set_prerequisites("fission-reactor-equipment", {"maraxsis-salt-reactor", "power-armor", "utility-science-pack", "military-science-pack"})
utils.set_prerequisites("rocket-fuel", {"oil-processing"})
utils.set_prerequisites("railway", {"elevated-rail", "engine", "logistics-2"})
utils.set_prerequisites("production-science-pack", {"productivity-module", "advanced-material-processing-2"})
if not k2 then utils.set_prerequisites("maraxsis-deepsea-research", {"chemical-science-pack", "hydraulic-science-pack"}) end
utils.set_prerequisites("maraxsis-sonar", {"radar"})
utils.set_prerequisites("radar", {"hydraulic-science-pack"})
utils.set_prerequisites("concrete", {"lubricant"})
utils.set_prerequisites("lubricant", {"maraxsis-hydro-plant"})
utils.set_prerequisites("electric-engine", {"engine", "lubricant"})
utils.set_prerequisites("automation-science-pack", {"concrete", "lubricant"})
utils.set_prerequisites("explosives", {"maraxsis-wyrm-confinement", "coal-liquefaction"})
utils.set_prerequisites("military-2", {"coal-liquefaction", "military", "logistic-science-pack"})
utils.set_prerequisites("cliff-explosives", {"military-2", "explosives", "fluid-handling"})

if not mods["planet-muluna"] then
    utils.set_prerequisites("automobilism", {"space-science-pack"})
    utils.set_prerequisites("nuclear-power", {"kovarex-enrichment-process"})
else
    utils.set_prerequisites("wood-gas-processing", {"muluna-greenhouses"})
end


utils.add_recipes("uranium-processing", {"maraxsis-stone-centrifuging", "uranium-fuel-cell"})
utils.add_recipes("planet-discovery-nauvis", {"burner-mining-drill"})
utils.add_recipes("tree-seeding", {"small-electric-pole", "wooden-chest"})
utils.add_recipes("advanced-material-processing", {"burner-mining-drill"})
utils.add_recipes("plastics", {"maraxsis-smelt-microplastics"})
utils.add_recipes("electronics", {"chemical-plant", "medium-electric-pole", "iron-stick"})
utils.add_recipes("tungsten-steel", {"maraxsis-tungsten-ore-dissolution"})
utils.add_recipes("biochamber", {"maraxsis-nutrients-from-tropical-fish"})
utils.add_recipes("low-density-structure", {"casting-low-density-structure"})
utils.add_recipes("coal-liquefaction", {"coal-synthesis", "simple-coal-liquefaction", "heavy-oil-cracking", "light-oil-cracking"})
utils.insert_recipe("coal-liquefaction", "oil-refinery", 1)
utils.add_recipes("foundry", {"maraxsis-limestone-processing"})
utils.add_recipes("space-platform-thruster", {"maraxsis-atmosphere"})
utils.add_recipes("production-science-pack", {"rail"})
utils.add_recipes("bioflux-processing", {"lubricant"})
utils.add_recipes("lubricant", {"biolubricant", "maraxsis-microplastics", "maraxsis-carbon-fiber-from-jelly", "firearm-magazine", "piercing-rounds-magazine"})
utils.insert_recipe("lubricant", "foundry", 1)
utils.add_recipes("automation-science-pack", {"lab"})

utils.remove_recipes("steam-power", {"offshore-pump"})
utils.remove_recipes("nuclear-power", {"uranium-fuel-cell"})
utils.remove_recipes("maraxsis-piscary", {"maraxsis-microplastics", "maraxsis-smelt-microplastics", "maraxsis-nutrients-from-tropical-fish"})
utils.remove_recipes("oil-processing", {"chemical-plant"})
utils.remove_recipes("electronics", {"small-electric-pole"})
utils.remove_recipes("rocket-turret", {"coal-synthesis"})
utils.remove_recipes("calcite-processing", {"simple-coal-liquefaction"})
utils.remove_recipes("electric-energy-distribution-1", {"medium-electric-pole"})
utils.remove_recipes("advanced-oil-processing", {"heavy-oil-cracking", "light-oil-cracking"})
utils.remove_recipes("maraxsis-glassworking", {"maraxsis-sand-extraction", "maraxsis-limestone-processing", "maraxsis-atmosphere"})
utils.remove_recipes("railway", {"rail"})
utils.remove_recipes("foundry", {"casting-low-density-structure", "foundry"})
utils.remove_recipes("planet-discovery-maraxsis", {"maraxsis-diesel-submarine"})
utils.remove_recipes("steam-power", {"pipe", "pipe-to-ground"})
utils.remove_recipes("electric-mining-drill", {"maraxsis-sand-extraction"})
utils.remove_recipes("bioflux-processing", {"biolubricant"})
utils.remove_recipes("lubricant", {"lubricant"})
utils.remove_recipes("electronics", {"lab"})
utils.remove_recipes("concrete", {"iron-stick"})
utils.remove_recipes("circuit-network", {"iron-stick"})
utils.remove_recipes("military-2", {"piercing-rounds-magazine"})

utils.set_trigger("foundry", {type = "craft-fluid", fluid = "lava"})
utils.set_trigger("solar-energy", {type = "craft-item", item = "electronic-circuit"})
utils.set_trigger("steam-power", {type = "craft-item", item = "rocket-fuel", count = 100})
utils.set_trigger("tungsten-steel", {type = "build-entity", entity = "chemical-plant"})
utils.set_trigger("electronics", {type = "craft-fluid", fluid = "molten-copper"})
utils.set_trigger("maraxsis-hydro-plant", {type = "craft-item", item = "tungsten-plate", amount = 50})
utils.set_trigger("concrete", {type = "craft-fluid", fluid = "water"})
utils.set_trigger("lubricant", {type = "build-entity", entity = "maraxsis-hydro-plant"})
utils.set_trigger("automation-science-pack", {type = "craft-item", item = "foundry"})
utils.set_trigger("sulfur-processing", data.raw.technology["maraxsis-wyrm-confinement"].research_trigger)
utils.set_trigger("ducts", {type = "craft-item", item = "cliff-explosives"})

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

-- increase the yield of the stone centrifuging recipe by 10x.
data.raw.recipe["maraxsis-stone-centrifuging"].results[1].probability = 0.1
data.raw.technology["maraxsis-stone-centrifuging"].hidden = true

data.raw.recipe["small-electric-pole"].enabled = false
data.raw.recipe["wooden-chest"].enabled = false
data.raw.recipe["burner-mining-drill"].enabled = false
data.raw.recipe["maraxsis-diesel-submarine"].enabled = false
data.raw.recipe["pipe"].enabled = true
data.raw.recipe["pipe-to-ground"].enabled = true
data.raw.recipe["offshore-pump"].enabled = true
data.raw.recipe["firearm-magazine"].enabled = false

local logistic_science = {"automation-science-pack", "logistic-science-pack"}
local chemical_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}
local hydraulic_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "hydraulic-science-pack"}
local hydraulic_space_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "hydraulic-science-pack", "space-science-pack"}
local space_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "space-science-pack"}
local space_science_or_before_muluna = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "space-science-pack"}

if mods["planet-muluna"] then
    space_science_or_before_muluna = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack","hydraulic-science-pack"} --Technologies intended to exist when starting a Muluna base.
end

local production_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "space-science-pack", "production-science-pack"}
local production_space_science = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "space-science-pack", "production-science-pack"}
local military_space_science = {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "space-science-pack"}

utils.set_packs("maraxsis-salt-reactor", hydraulic_space_science, 100, 30)
utils.set_packs("uranium-processing", hydraulic_science, 100, 30)
utils.set_packs("hydraulic-science-pack", chemical_science, 100, 30)
utils.set_packs("maraxsis-piscary", logistic_science, 100, 30)
utils.set_packs("coal-liquefaction", logistic_science, 100, 30)
utils.set_packs("oil-gathering", space_science, 100, 30)
utils.set_packs("advanced-oil-processing", production_space_science, 1000, 60)
utils.set_packs("flammables", space_science, 200, 60)
utils.set_packs("flamethrower", military_space_science, 200, 60)
utils.set_packs("rocketry", military_space_science, 500, 60)
utils.set_packs("explosive-rocketry", military_space_science, 500, 60)
utils.set_packs("automobilism", space_science, 500, 60)
utils.set_packs("tank", military_space_science, 1000, 60)
utils.set_packs("nuclear-power", space_science_or_before_muluna, 1000, 60)
utils.set_packs("railway", production_science, 100, 30)
utils.set_packs("automated-rail-transportation", production_science, 100, 30)
utils.set_packs("fluid-wagon", production_science, 100, 30)
utils.set_packs("processing-unit", logistic_science, 100, 30)
utils.set_packs("radar", hydraulic_science, 100, 60)
utils.set_packs("maraxsis-sonar", hydraulic_science, 100, 60)
utils.set_packs("electric-engine", logistic_science, 100, 30)
if not k2 then utils.set_packs("maraxsis-deepsea-research", hydraulic_science, 500, 60) end
utils.set_packs("cliff-explosives", logistic_science, 100, 30)
utils.set_packs("maraxsis-wyrm-confinement", logistic_science, 100, 30)

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

for _, condition in pairs(data.raw.recipe["foundry"].surface_conditions) do
    if condition.property == "pressure" then
        condition.min = 4000
        condition.max = nil
    end
end

data.raw.recipe["maraxsis-pressure-dome"].category = "maraxsis-hydro-plant-or-assembling"
data.raw.recipe["biolubricant"].category = "maraxsis-hydro-plant-or-biochamber"
data.raw.recipe["refined-concrete"].category = "pressing"
