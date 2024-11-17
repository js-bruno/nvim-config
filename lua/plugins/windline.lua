return {
  "windwp/windline.nvim",
  config = function ()
    require('wlsample.bubble2')
    require('windline').setup({
      statuslines = {},
      tabline = {
        template = {
          normal_end = {
            function(data)
              return vim.fn.tabpagewinnr(data.tab_index,'$')
            end,
            { 'blue', 'red' },
          },
        },
      },
    })
  end
}
