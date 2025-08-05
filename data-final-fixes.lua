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
