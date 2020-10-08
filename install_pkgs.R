
# Additonal packages 
install.packages(c("tidyverse",
                   "data.table",
                   "scales",
                   "cowplot",
                   "devtools",
                   "usethis",
                   "testtaht",
                   "evobiR",
                   "R.utils"))

# Additonal Bioc packages 
BiocManager::install(c("GenomicRanges", 
                       "igvR",
                       "VariantAnnotaion",
                       "cn.mops",
                       "Rsamtools",
                       "biomaRt",
                       "ggbio", 
                       "BiocStyle"), ask = FALSE)

# install latest version of CNVgears package 
devtools::install_github("sinomem/cnvgears")
