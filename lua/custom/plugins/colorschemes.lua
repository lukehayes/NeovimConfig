return  {
    'folke/tokyonight.nvim',
    'whatyouhide/vim-gotham',

    'savq/melange-nvim',
    'rose-pine/neovim',
    'wadackel/vim-dogrun',
    'NLKNguyen/papercolor-theme',
    'cocopon/iceberg.vim',
    'jaredgorski/fogbell.vim',
    'lukehayes/LDH-Base2Tone-nvim',
    'rakr/vim-two-firewatch',
    'liuchengxu/space-vim-dark',
    'TheNiteCoder/mountaineer.vim',
    'Shatur/neovim-ayu',
    'Badacadabra/vim-archery',
    'gilgigilgil/anderson.vim',
    'oxfist/night-owl.nvim',
    'sainnhe/gruvbox-material',
    'sainnhe/sonokai',
    'sainnhe/everforest',
    'sainnhe/edge',
    'rockerBOO/boo-colorscheme-nvim',
    'xero/miasma.nvim',
    'sigmavim/kyotonight',
    'AhmedAbdulrahman/aylin',
    'Biscuit-Colorscheme/biscuit',
    'lighthaus-theme/vim-lighthaus',
    'ellisonleao/gruvbox.nvim',
    'catppuccin/nvim',
    'yazeed1s/oh-lucy.nvim',

    "aperezdc/vim-elrond",
    "d00h/nvim-rusticated",
    "projekt0n/github-nvim-theme",
    "overcache/NeoSolarized",
    "techtuner/aura-neovim",
    "miikanissi/modus-themes.nvim",
    "aliqyan-21/darkvoid.nvim",
    "blazkowolf/gruber-darker.nvim",

    {
        "kyazdani42/blue-moon",
        config = function()
            vim.opt.termguicolors = true
        end
    }, {


    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            -- Recommended - see "Configuring" below for more config options
            transparent = true,
            italic_comments = true,
            hide_fillchars = true,
            borderless_telescope = true,
        })
        vim.cmd("colorscheme cyberdream") -- set the colorscheme
    end,
    },

    {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
    },

}
