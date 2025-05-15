return {
    "sphamba/smear-cursor.nvim",

    config = function()
        require("smear_cursor").setup({
            stiffness               = 0.8,
            trailling_stiffness     = 0.5,
            distance_stop_animating = 0.5,
            never_draw_over_target  = false
        })
    end
}
