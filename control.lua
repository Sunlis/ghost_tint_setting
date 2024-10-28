-- require('settings')
-- require('data')
-- require('script')


-- local settings = {
-- 	"ghost_tint",
-- 	"ghost_tint_delivering",
-- 	"tile_ghost_tint",
-- 	"tile_ghost_tint_delivering",
-- }

-- local function set_tint(player)
-- 	local player_settings = settings.get_player_settings(player).mod_settings
-- 	for _, setting in pairs(settings) do
-- 		data.raw["utility-constants"][setting].setting = player_settings["ghost-tint-setting-" .. setting].value
-- 	end
-- end

-- script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
-- 	set_tint(event.player_index)
-- end)
