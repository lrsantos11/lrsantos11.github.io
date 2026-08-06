# academic-bib

Single source of truth for Luiz-Rafael Santos's publication and talk bibliography:

- `my_refs.bib` — publications, cited from `lrsantos11.github.io` (via `pandoc
  --citeproc`) and `CV_en/CV_LRS.tex` (via `\addbibresource`).
- `talks.bib` — talks and conference presentations, parsed directly by
  `lrsantos11.github.io/utils.jl` and included via `CV_en/CV_LRS.tex`.

Consumed as a git submodule by:

- [`lrsantos11.github.io`](https://github.com/lrsantos11/lrsantos11.github.io) at `_assets/bib/`
- [`CV_en`](https://github.com/lrsantos11/CV_en) at `bib/`

## Updating a citation

Edit here, commit, push. Then in each consumer repo:

```sh
git submodule update --remote
git add <submodule-path>
git commit -m "Bump academic-bib"
```
