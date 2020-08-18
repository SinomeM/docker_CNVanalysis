FROM bioconductor/bioconductor_docker:latest

# Additional R packages 
RUN install2.r \
    tidyverse \
    data.table \
    scales \
    cowplot \
    devtools \
    usethis \
    testtaht 

# Additional Bioconductor packages 
RUN R -e "BiocManager::install(c('GenomicRanges', 
                               'igvR',
                               'VariantAnnotaion',
                               'cn.mops',
                               'Rsamtools',
                               'biomaRt',
                               'ggbio'))"


CMD ["/init"]
