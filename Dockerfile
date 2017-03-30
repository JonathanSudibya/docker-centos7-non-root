FROM centos:7
MAINTAINER Jonathan Sudibya <jonathans121@gmail.com>

# Create group and user centos with GID:1000 and UID:1000
RUN groupadd -r centos -g 1000 && useradd -r -g centos -m -d /home/centos -s /sbin/nologin -c "Centos User" centos && chmod 755 /home/centos

# Set default working directory to '/home/centos'
WORKDIR /home/centos

# Specify the user that execute all commands below
USER centos
