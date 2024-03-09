if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_scale_factor = 1.2

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.8
  vim.g.transparency = 0
  vim.g.neovide_background_color = "#0f1117" .. alpha()
  vim.g.neovide_window_blurred = true
  vim.g.neovide_fullscreen = true
  vim.g.neovide_remember_window_size = true

  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.2
end
