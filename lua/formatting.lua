return {
    "stevearc/conform.nvim",
    event = {"BufReadPre", "BufNewFile"},
    config = function ()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                javascript = {"prettier"},
                typescript = {"prettier"},
                css = {"prettier"},
                html = {"prettier"},
                json = {"prettier"},
                yaml = {"prettier"},
                markdown = {"prettier"},
                python = {  "isort", "black"},
            }
        })
    end

}
