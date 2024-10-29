local function setting(name)
  return settings.startup["ghost-tint-setting-" .. name].value
end

data.raw["utility-constants"].default.ghost_tint = setting("ghost_tint")
data.raw["utility-constants"].default.ghost_tint_delivering = setting("ghost_tint_delivering")
data.raw["utility-constants"].default.tile_ghost_tint = setting("tile_ghost_tint")
data.raw["utility-constants"].default.tile_ghost_tint_delivering = setting("tile_ghost_tint_delivering")
data.raw["utility-constants"].default.ghost_shimmer_settings.tint = {
  setting("shimmer_tint").r / 255,
  setting("shimmer_tint").g / 255,
  setting("shimmer_tint").b / 255,
  setting("shimmer_tint").a / 255
}
if setting("overlay_layers_enabled") then
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[1].tint = {
    setting("overlay_layer_1_tint").r / 255,
    setting("overlay_layer_1_tint").g / 255,
    setting("overlay_layer_1_tint").b / 255,
    setting("overlay_layer_1_tint").a / 255
  }
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[2].tint = {
    setting("overlay_layer_2_tint").r / 255,
    setting("overlay_layer_2_tint").g / 255,
    setting("overlay_layer_2_tint").b / 255,
    setting("overlay_layer_2_tint").a / 255
  }
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[3].tint = {
    setting("overlay_layer_3_tint").r / 255,
    setting("overlay_layer_3_tint").g / 255,
    setting("overlay_layer_3_tint").b / 255,
    setting("overlay_layer_3_tint").a / 255
  }
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[4].tint = {
    setting("overlay_layer_4_tint").r / 255,
    setting("overlay_layer_4_tint").g / 255,
    setting("overlay_layer_4_tint").b / 255,
    setting("overlay_layer_4_tint").a / 255
  }
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[5].tint = {
    setting("overlay_layer_5_tint").r / 255,
    setting("overlay_layer_5_tint").g / 255,
    setting("overlay_layer_5_tint").b / 255,
    setting("overlay_layer_5_tint").a / 255
  }
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers[6].tint = {
    setting("overlay_layer_6_tint").r / 255,
    setting("overlay_layer_6_tint").g / 255,
    setting("overlay_layer_6_tint").b / 255,
    setting("overlay_layer_6_tint").a / 255
  }
else
  local overlay_layers = {}
  for i = 1, 6 do
    overlay_layers[i] = {
      blend_mode = 1, --screen
      shape = 1, --fill
      x = 1,
      y = 1,
      tint = {1.0, 1.0, 1.0, 1.0},
      cutoff = 0.001,
    }
  end
  data.raw["utility-constants"].default.ghost_shimmer_settings.overlay_layers = overlay_layers
end

if setting("distortion_layers_enabled") == false then
  local distortion_layers = {}
  for i = 1, 6 do
    distortion_layers[i] = {
      shape = 0, --none
      intensity = 0.001,
      x = 1,
      y = 1,
    }
  end
  data.raw["utility-constants"].default.ghost_shimmer_settings.distortion_layers = distortion_layers
end
