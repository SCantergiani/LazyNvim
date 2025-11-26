return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable Pyright completely
        pyright = false,

        -- Keep ty configuration
        ty = {
          settings = {
            ty = {
              inlayHints = { variableTypes = false },
              experimental = {
                rename = true,
              },
            },
          },
        },
      },
    },
  },
}
