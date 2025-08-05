local utils = require "__any-planet-start__.utils"
local asteroid_util = require "__space-age__.prototypes.planet.asteroid-spawn-definitions"

utils.set_prerequisites("sp-spidertron-automation", {"processing-unit", "tungsten-steel", "electric-engine", "bulk-inserter", "fluid-handling"})
utils.add_recipes("sp-spidertron-automation", {"maraxsis-diesel-submarine"})
utils.set_packs("sp-spidertron-automation", {"automation-science-pack", "logistic-science-pack"}, 100, 30)

if mods["Rocs-Hardcore-Demolishers"] then
    local utils = require("__any-planet-start__.utils")
    utils.add_recipes("foundry", {
        "concrete-from-molten-iron",
        "casting-steel",
    })
end

data.raw.planet.maraxsis.asteroid_spawn_definitions, data.raw.planet.nauvis.asteroid_spawn_definitions = data.raw.planet.nauvis.asteroid_spawn_definitions, data.raw.planet.maraxsis.asteroid_spawn_definitions
data.raw["space-connection"]["vulcanus-maraxsis"].asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
data.raw["space-connection"]["fulgora-maraxsis"].asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)


local sacrifice = table.deepcopy(data.raw.recipe["electromagnetic-plant"])
table.insert(sacrifice.ingredients, {
    type = "item",
    name = "maraxsis-a-breath-of-fresh-air",
    amount = 1,
})
sacrifice.name = sacrifice.name .. "-sacrifice"
sacrifice.main_product = "electromagnetic-plant"
sacrifice.category = "crafting"
sacrifice.localised_name = {"entity-name.electromagnetic-plant"}
data:extend{sacrifice}
table.insert(data.raw.technology["electromagnetic-plant"].effects, 1, {
    type = "unlock-recipe",
    recipe = sacrifice.name
})
data.raw.recipe["electromagnetic-plant"].category = "electromagnetics"