require('core.editor')
require('core.ensurelazy')

-- install plugins
require('lazy').setup('core.plugins')


-- setup plugins
require('core.plugin-setup')

-- set keymaps
require('core.keymaps')



-- Choose theme

-- require('core.plugin_setup.gruvbox')
-- vim.cmd.colorscheme("gruvbox")

require('core.plugin-setup.onedark')
vim.cmd.colorscheme("onedark")
