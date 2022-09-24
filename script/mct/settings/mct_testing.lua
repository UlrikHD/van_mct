
local mct = get_mct()

local mct_mod = mct:register_mod("mct_demo")

---@type MCT.Option.Dropdown
local glob = mct_mod:add_new_option("global_test", 'dropdown')
glob:set_text("User-specific Settings")
glob:set_is_global(true)
glob:add_dropdown_values({
    {
        key = "default",
        text = "Default",
        is_default = true,
    },
    {
        key = "host",
        text = "Host Option",
    },
    {
        key = "client",
        text = "Client option",
    }
})

---@type MCT.Option.Dropdown
local camp = mct_mod:add_new_option("campaign_test", "dropdown")
camp:set_text("Campaign-wide Settings")
camp:add_dropdown_values({
    {
        key = "default",
        text = "Default",
        is_default = true,
    },
    {
        key = "host",
        text = "Host Option",
    },
    {
        key = "client",
        text = "Client option",
    }
})

-- local glob = mct_mod:add_new_option("global_test", 'text_input')
-- glob:set_default_value("Blorpa")
-- glob:set_text("Global Test")
-- glob:set_tooltip_text("This is a test of the Global Registry system. It should theoretically save *everywhere*.")
-- glob:set_is_global(true)

-- local loc = mct_mod:add_new_option("campaign_test", "text_input")
-- loc:set_default_value("Floopa")
-- loc:set_text("Local Test")
-- loc:set_tooltip_text("This is a test of the Campaign Registry system. It should have a different value per-campaign (chosen in the frontend), and display the default value whenever out-of-context.")

-- local debug = mct_mod:add_new_option("mct_debug", "checkbox")
-- debug:set_default_value(false)
-- debug:set_text("Debug Logging")
-- debug:set_tooltip_text("This option removes the performative nature of the Vandy Library logging. Using Debug mode will mean more accurate log files, but you may notice a slowdown at points as the mod writes the logs. [[col:red]]Only use if you're getting crashes![[/col]]")
-- debug:set_local_only(true)

-- local check = mct_mod:add_new_option("check", 'checkbox')
-- check:set_text("Global Locked Checkbox")
-- check:set_tooltip_text("Test checkbox")
-- check:set_is_global(true)
-- check:set_locked(true)

-- local chek = mct_mod:add_new_option("check_unlock", 'checkbox')
-- chek:set_text("Global Unlocked Checkbox")
-- chek:set_tooltip_text("Test checkbox")
-- chek:set_is_global(true)
-- chek:add_confirmation_popup(
--     function(new_val)
--         if new_val == false then
--             return true, "Are you sure you want to change this Global Unlocked Checkbox to false?"
--         end

--         return false
--     end
-- )

-- ---@type MCT.Option.Dropdown
-- local drop = mct_mod:add_new_option("dropdown", "dropdown")
-- drop:set_text("Dropdown")
-- drop:add_dropdown_values({
--     {
--         key = "Test",
--         text = "Testing text!",
--         is_default = false,
--     },
--     {
--         key = "Other Test",
--         text = "Use this!",
--         is_default = true,
--     },
--     {
--         key = "test",
--         text = "Hello",
--     }
-- })

-- ---@type MCT.Option.Slider
-- local slider = mct_mod:add_new_option("slider", 'slider')
-- slider:set_text("Test Slider")
-- slider:set_tooltip_text("This is my Test Slider.")
-- slider:set_default_value(200)
-- slider:slider_set_min_max(50, 500)

-- ---@type MCT.Option.TextInput
-- local input = mct_mod:add_new_option("input", "text_input")
-- input:set_text("Text Input")
-- input:set_tooltip_text("This is my test text input.")
-- input:add_validity_test(
--     function(t)
--         if t == "Dummy" then
--             return false, "What did you call me?!"
--         end

--         if string.find(t, "butt") then
--             return false, "Get that out of here"
--         end
--     end
-- )

-- ---@type MCT.Option.TextInput
-- local input = mct_mod:add_new_option("double_imput", "text_input")
-- input:set_text("Other Text Input")
-- input:set_tooltip_text("This is my test text input.")
-- input:add_validity_test(
--     function(t)
--         if t == "fuck" then
--             return false, "NO CUSSING"
--         end

--         if t:len() > 10 then
--             return false, "Must be 10 characters or less!"
--         end
--     end
-- )

-- local my_dummy = mct_mod:add_new_option("dummy", "dummy")
-- my_dummy:set_text("This is a Dummy object!")
-- my_dummy:set_tooltip_text("Yallooooo")

-- local s = mct_mod:add_new_section("Testing", "Testing Section")
-- 

-- mct_mod:add_new_section("Final Section", "Testing third!")
-- mct_mod:add_new_option("flarbo", "checkbox"):set_text("This is a testing checkbox!")

-- mct_mod:add_new_option("Testing Faction Context", "dropdown_game_object")
