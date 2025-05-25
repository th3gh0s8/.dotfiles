return {
    {
        "saghen/blink.cmp",
        build = "cargo build --release",
        opts = {
            fuzzy = { implementation = "lua" }
        },
    },
}
