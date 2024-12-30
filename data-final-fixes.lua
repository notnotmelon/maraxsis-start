local a_breath_of_fresh_air = data.raw["assembling-machine"]["maraxsis-a-breath-of-fresh-air"]

a_breath_of_fresh_air.collision_mask.layers[maraxsis_collision_mask] = nil
a_breath_of_fresh_air.collision_mask.layers[maraxsis_dome_collision_mask] = nil

local utils = require("__any-planet-start__.utils")

utils.set_prerequisites("sp-spidertron-automation", {"processing-unit", "tungsten-steel", "electric-engine", "bulk-inserter", "fluid-handling"})
