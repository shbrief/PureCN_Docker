#############################################################
# Build a bioc-release_base2 container with PureCN
#############################################################

# Set the base image
FROM bioconductor/release_base2

# File Author / Maintainer
MAINTAINER Sehyun Oh <shbrief@gmail.com>

# Install packages
ADD ./install_R_pkgs.R /tmp/
RUN chmod 755 /tmp/install_R_pkgs.R
RUN Rscript /tmp/install_R_pkgs.R