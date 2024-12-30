data:extend {{
    type = "item",
    name = "maraxsis-a-breath-of-fresh-air",
    icon = "__maraxsis-start__/graphics/icons/a-breath-of-fresh-air.png",
    icon_size = 64,
    subgroup = "maraxsis-machines",
    order = "a",
    stack_size = 1,
    place_result = "maraxsis-a-breath-of-fresh-air",
    flags = {"not-stackable"},
    weight = 1000000,
    default_import_location = "maraxsis",
}}

data:extend {{
    type = "recipe-category",
    name = "maraxsis-a-breath-of-fresh-air"
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-a-breath-of-fresh-air",
    enabled = false,
    hidden = true,
    ingredients = {},
    results = {{
        type = "fluid",
        name = "maraxsis-atmosphere",
        amount = 20,
        temperature = 25
    }},
    category = "maraxsis-a-breath-of-fresh-air",
    energy_required = 1,
    auto_recycle = false,
    allow_decomposition = false,
    localised_name = {"fluid-name.maraxsis-atmosphere"},
    main_product = "maraxsis-atmosphere",
}}

data:extend {{
    type = "fuel-category",
    name = "maraxsis-hidden-fuel-category",
    hidden = true,
    localised_name = "",
}}

data:extend {{
    type = "item",
    name = "maraxsis-hidden-fuel",
    icon = data.raw.fluid["maraxsis-atmosphere"].icon,
    icon_size = 64,
    fuel_value = "999QJ",
    hidden = true,
    stack_size = 1,
    fuel_category = "maraxsis-hidden-fuel-category",
    localised_name = "",
}}

data:extend {{
    type = "assembling-machine",
    name = "maraxsis-a-breath-of-fresh-air",
    fixed_recipe = "maraxsis-a-breath-of-fresh-air",
    icon = "__maraxsis-start__/graphics/icons/a-breath-of-fresh-air.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    show_recipe_icon = false,
    minable = {mining_time = 0.4, result = "maraxsis-a-breath-of-fresh-air"},
    max_health = 100,
    fluid_boxes = {{
        production_type = "output",
        pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
        pipe_picture_frozen = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures_frozen,
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = {north = -1, east = -1, west = -1},
        volume = 500,
        pipe_connections = {{
            flow_direction = "output",
            position = {0, -1},
            direction = defines.direction.north
        }}
    }},
    crafting_categories = {"maraxsis-a-breath-of-fresh-air"},
    crafting_speed = 1,
    energy_source = {
        type = "burner",
        fuel_inventory_size = 0,
        fuel_categories = {"maraxsis-hidden-fuel-category"},
        initial_fuel_percent = 1,
        initial_fuel = "maraxsis-hidden-fuel",
        smoke = {
            {
                name = "maraxsis-swimming-bubbles",
                frequency = 100,
                position = {-0, -0},
                height = 0.55,
                starting_vertical_speed = 0.03
            }
        }
    },
    energy_usage = "1W",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__maraxsis-start__/graphics/entity/a-breath-of-fresh-air.png",
                    width = 1120 / 4,
                    height = 315,
                    frame_count = 4,
                    shift = {0, -0.2},
                    scale = 0.375,
                    tint = {0.9, 0.9, 0.9, 1}
                },
                {
                    filename = "__maraxsis-start__/graphics/entity/a-breath-of-fresh-air-sh.png",
                    width = 373,
                    height = 320,
                    frame_count = 1,
                    repeat_count = 4,
                    shift = {1, -0.2},
                    draw_as_shadow = true,
                    scale = 0.375,
                    tint = {0.9, 0.9, 0.9, 1}
                },
            },
        },
    },
    open_sound = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"].open_sound),
    close_sound = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"].close_sound),
    working_sound = {
        sound = {
            filename = "__maraxsis__/sounds/regulator.ogg",
            volume = 0.3
        },
        max_sounds_per_type = 3,
        audible_distance_modifier = 0.4,
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    match_animation_speed_to_activity = false,
    perceived_performance = {minimum = 1, maximum = 1},
    heating_energy = "50kW",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 0,
    created_effect = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "on_built_a_breath_of_fresh_air",
            }
        }
    }
}}

data:extend {{
    type = "electric-energy-interface",
    name = "maraxsis-a-breath-of-fresh-air-power",
    icon = "__maraxsis-start__/graphics/icons/a-breath-of-fresh-air.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = nil,
    hidden = true,
    factoriopedia_alternative = "maraxsis-a-breath-of-fresh-air",
    max_health = 100,
    energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        render_no_power_icon = false,
        render_no_network_icon = true,
        buffer_capacity = "2MJ",
    },
    energy_production = "2MW",
    energy_usage = "0W",
    gui_mode = "none",
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_mask = {layers = {}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    selectable_in_game = false,
}}