#!/bin/sh

# Install prerequisites
sudo apt-get install autopoint gperf intltool p7zip-full

# Clone the GitHub
git clone https://github.com/mxe/mxe.git

# Add MXE to the path
echo "export PATH=`pwd`/mxe/usr/bin:$PATH" >> ~/.bashrc

# Go into the MXE folder
cd mxe

# Build MXE with GCC
make gcc


