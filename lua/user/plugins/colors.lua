return
{
   {
      "navarasu/onedark.nvim",
      config = function()
         require("onedark").setup({
            transparent = true,
            styles = 'cool',

            highlights = {
               ["@constant.builtin"] = { fg = "#bf8256", fmt = "bold" },
               ["@boolean"] = { fg = "#bf8256", fmt = "bold" },
               ["@error"] = { fg = "#bd2628" },

               ["@function"] = { fg = "#3e75bd" },
               ["@function.builtin"] = { fg = "#5d93b3" },
               ["@function.call"] = { fg = "#5d93b3", fmt = "bold" },
               ["@function.macro"] = { fg = "#5d93b3" },
               ["@function.method"] = { fg = "#5d93b3" },
               ["@function.method.call"] = { fg = "#5d93b3", fmt = "bold" },

               ["@keyword"] = { fg = "lightred", fmt = "bold" },
               ["@keyword.return"] = { fg = "lightred" },
               ["@keyword.conditional"] = { fg = "#bf86a0" },
               ["@keyword.directive"] = { fg = "#bf86a0" },
               ["@keyword.exception"] = { fg = "#bf86a0" },
               ["@keyword.function"] = { fg = "#bf86a0" },
               ["@keyword.import"] = { fg = "#ba857b" },
               ["@keyword.operator"] = { fg = "#bf86a0" },
               ["@keyword.repeat"] = { fg = "lightred" },

               ["@variable"] = { fg = "#b6d0fa" },
               ["@variable.builtin"] = { fg = "lightred" },
               ["@variable.call"] = { fg = "lightred" },
               ["@variable.member"] = { fg = "#b6d0fa" },

               ["@type"] = { fg = "lightorange", fmt = "bold" },
               ["@type.builtin"] = { fg = "lightorange", fmt = "bold" },

               ["@module"] = { fg = "#ccbd5e" },
               ["@namespace"] = { fg = "#a15f43" },
               ["@operator"] = { fg = "#b5727d", fmt = "bold" },
               ["@parameter"] = { fg = "#cc5a43" },
               ["@property"] = { fg = "#5d93b3" },
               ["@punctuation"] = { fg = "#1c2926" },
               ["@repeat"] = { fg = "lightred" },
               ["@string"] = { fg = "#79a376" },

               ["@none"] = { fg = "#72a694" },
               ["@tag"] = { fg = "#cc647e" },
               ["@tag.delimiter"] = { fg = "#cc647e" },

               ["@warning"] = { fg = "#ccbd5e" },
            }
         })
         require("onedark").load()

         vim.cmd [[
                    highlight TelescopeBorder guifg=#5d93b3
                    highlight TelescopePromptBorder guifg=#534c75
                    highlight TelescopeResultsBorder guifg=#534c75
                    highlight TelescopePreviewBorder guifg=#534c75
                    highlight @constructor gui=none
                    ]]
      end,
      lazy = false,
   },
}
