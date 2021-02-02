FROM bioconductor/bioconductor_docker:latest

# Additional R packages 
ADD install_pkgs.R /tmp/
RUN R -f /tmp/install_pkgs.R

# Copy Rstudio configuration file 
RUN mkdir /home/.config/rstudio
ADD rstudio-prefs.json /home/.config/rstudio

# init 
CMD ["/init"]
