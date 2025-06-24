return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local function macro_recording()
      local reg = vim.fn.reg_recording()
      if reg == '' then return '' end
      return 'Recording @' .. reg
    end

    require('lualine').setup({
      --options = { theme = 'everforest' },
      options = { theme = 'auto'},
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { macro_recording, 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    })

    vim.api.nvim_create_autocmd({ 'RecordingEnter', 'RecordingLeave' }, {
      callback = function()
        require('lualine').refresh()
      end,
    })
  end
}

