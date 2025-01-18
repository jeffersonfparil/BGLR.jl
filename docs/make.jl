using BGLR
using Documenter

DocMeta.setdocmeta!(BGLR, :DocTestSetup, :(using BGLR); recursive = true)

makedocs(;
    modules = [BGLR],
    authors = "jeffersonparil@gmail.com",
    sitename = "BGLR.jl",
    format = Documenter.HTML(;
        canonical = "https://jeffersonfparil.github.io/BGLR.jl",
        edit_link = "main",
        assets = String[],
    ),
    pages = ["Home" => "index.md"],
)

deploydocs(; repo = "github.com/jeffersonfparil/BGLR.jl", devbranch = "main")
