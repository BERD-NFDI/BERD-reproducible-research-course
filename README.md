# Course booklet for the BERD course "Make your research reproducible"

Welcome to the course booklet repository! :wave: 👍

To make this booklet FAIR (finable, accessible, interoperable, and reusable),
we have created an OSF entry: https://osf.io/rupt7/

## Requirements

This repo uses [`renv`](https://rstudio.github.io/renv/articles/renv.html) for dependency management.

If you haven't used `renv` before, install it using:

```R
install.packages("renv")
```

If you open the R project `berd-reproducible-research-course.Rproj` for the first time in RStudio, `renv` should be automatically activated.
You are asked to install the packages listed in [`renv.lock`](renv.lock):

```R
# Bootstrapping renv 1.0.0 ---------------------------------------------------
- Downloading renv ... OK
- Installing renv  ... OK

- Project '~/edu/berd-reproducible-research-course' loaded. [renv 1.0.0]
- None of the packages recorded in the lockfile are installed.
- Using `renv::restore()` to restore the project library.
Do you want to proceed? [Y/n]: Y
```

## Viewing the booklet
To view the booklet, please run

```
quarto preview .
```

in your terminal (while in the repository folder), or

```r
quarto::quarto_preview()
```

in R.

## Contributing to the booklet

The book chapters are based on the `.qmd`-files in the main folder of this repo.

Feel free to suggest improvements. The easiest way is if you create a fork, make your edit, and then create a pull request. 

Thank you! :clap:
