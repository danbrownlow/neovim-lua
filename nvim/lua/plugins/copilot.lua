local status_ok, copilot = pcall(require, 'copilot')
if not status_ok then
  return
end

copilot.setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    sh = function ()
      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.c') then
        return false
      end
      return true
    end,
  },
})
