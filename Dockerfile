FROM bioconductor/bioconductor_docker:latest

# Additional R packages 
ADD install_pkgs.R /tmp/

RUN R -f /tmp/install_pkgs.R

# init 
CMD ["/init"]
