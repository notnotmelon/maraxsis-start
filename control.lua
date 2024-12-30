local function fix_non_collideable_cliffs(surface)
    if game.tick ~= 0 then return end
    if storage.cliffs_fixed then return end
    storage.cliffs_fixed = true

    local cliffs = surface.find_entities_filtered {type = "cliff", name = "cliff-maraxsis-collisionless"}
    for _, cliff in pairs(cliffs) do
        local position = cliff.position
        local cliff_orientation = cliff.cliff_orientation
        cliff.destroy()
        surface.create_entity {
            name = "cliff-maraxsis",
            position = position,
            cliff_orientation = cliff_orientation,
        }
    end
end

local function create_inital_submarine(surface)
    storage.submarine_x = (storage.submarine_x or 6) + 4

    local submarine = surface.create_entity {
        name = "maraxsis-diesel-submarine",
        position = {x = storage.submarine_x, y = -14.5},
        force = "player",
        raise_built = true
    }

    local fuel_inventory = submarine.get_inventory(defines.inventory.fuel)
    fuel_inventory.insert {name = "maraxsis-hydrogen-barrel", count = 80}
end

script.on_event(defines.events.on_player_created, function(event)
    if not remote.interfaces["freeplay"] then return end
    local player = game.get_player(event.player_index)
    local surface = player.surface
    if surface.name ~= "maraxsis" then return end
    create_inital_submarine(surface)
    fix_non_collideable_cliffs(surface)
    pcall(player.exit_cutscene)
    player.insert {name = "light-armor"}
end)

script.on_init(function()
    if not remote.interfaces["freeplay"] then return end
    remote.call("freeplay", "set_created_items", {})
    remote.call("freeplay", "set_ship_items", {
        ["maraxsis-a-breath-of-fresh-air"] = 1,
        ["foundry"] = 5,
        ["medium-electric-pole"] = 20,
    })
    remote.call("freeplay", "set_debris_items", {
        ["iron-plate"] = 100,
        ["tungsten-plate"] = 100,
    })
end)

script.on_event(defines.events.on_script_trigger_effect, function(event)
    if event.effect_id ~= "on_built_a_breath_of_fresh_air" then return end
    local entity = event.source_entity
    entity.destructible = false
    storage.fresh_air_energy_interfaces = storage.fresh_air_energy_interfaces or {}
    local energy_interface = entity.surface.create_entity {
        name = "maraxsis-a-breath-of-fresh-air-power",
        position = entity.position,
        force = entity.force,
        create_build_effect_smoke = false,
    }
    energy_interface.destructible = false
    energy_interface.operable = false
    energy_interface.minable = false
    local registration_number = script.register_on_object_destroyed(entity)
    storage.fresh_air_energy_interfaces[registration_number] = energy_interface
end)

script.on_event(defines.events.on_object_destroyed, function(event)
    if not storage.fresh_air_energy_interfaces then return end
    local energy_interface = storage.fresh_air_energy_interfaces[event.registration_number]
    if not energy_interface then return end
    energy_interface.destroy()
    storage.fresh_air_energy_interfaces[event.registration_number] = nil
end)
