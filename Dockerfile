FROM andrewosh/binder-base

MAINTAINER Andrew Osheroff <andrewosh@gmail.com>

USER root

# Add Julia dependencies
RUN apt-get update
RUN apt-get install -y libroot-core-dev root-system-bin root-system-common libroot-tree-dev && apt-get clean

USER main

RUN pip install pyslha
RUN pip install bash_kernel
RUN python -m bash_kernel.install



