return {
    "prisma/vim-prisma",
    lazy = false,
    ft = "prisma", -- File type
    event = {
        "BufRead *.prisma",
        "BufNew *.prisma",
    },
}
