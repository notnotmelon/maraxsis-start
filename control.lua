script.on_event(defines.events.on_chunk_generated, function(event)
    if event.tick ~= 0 then return end
    local surface = event.surface
    if surface.name ~= "maraxsis" then return end

    local water_shaders = surface.find_entities_filtered {type = "simple-entity", name = "maraxsis-water-shader"}
    for _, entity in pairs(water_shaders) do
        entity.destroy()
    end

    for x = -3, 3 do
        for y = -3, 3 do
            local entity = surface.create_entity {
                name = "maraxsis-water-shader",
                position = {x = x * 32 + 16, y = y * 32 + 16},
                force = game.forces.neutral
            }
            entity.destructible = false
            entity.minable = false
        end
    end
end)

local function create_inital_storage_tank(surface)
    local atmosphere_tank = surface.create_entity {
        name = "storage-tank",
        position = surface.find_non_colliding_position("storage-tank", {x = 10, y = -10}, 100, 1, true),
        force = "player"
    }

    atmosphere_tank.fluidbox[1] = {
        name = "maraxsis-atmosphere",
        amount = 25000,
        temperature = 25
    }
    atmosphere_tank.minable_flag = false
    atmosphere_tank.destructible = false

    rendering.draw_text {
        text = "A breath of fresh air. -benefactor",
        surface = surface,
        target = {
            entity = atmosphere_tank,
            offset = {-5, -2}
        },
        color = {1, 1, 1},
        scale = 1.2,
        font = "default-large-semibold",
    }

    return atmosphere_tank.position
end

local function create_inital_submarine(surface, submarine_position)
    local submarine = surface.create_entity {
        name = "maraxsis-diesel-submarine",
        position = {submarine_position.x, submarine_position.y - 4.5},
        force = "player",
        raise_built = true
    }
    
    local fuel_inventory = submarine.get_inventory(defines.inventory.fuel)
    fuel_inventory.insert {name = "maraxsis-hydrogen-barrel", count = 80}
end

script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    local surface = player.surface
    if surface.name ~= "maraxsis" then return end
    local submarine_position = create_inital_storage_tank(surface)
    create_inital_submarine(surface, submarine_position)
end)

script.on_init(function()
    if not remote.interfaces["freeplay"] then return end
    remote.call("freeplay", "set_created_items", {})
    remote.call("freeplay", "set_ship_items", {
        ["light-armor"] = 1,
        ["solar-panel"] = 30,
        ["medium-electric-pole"] = 20,
    })
end)
