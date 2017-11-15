
# Compile a modern LaTeX-Beamer presentation using docker

Why? Why not.
I had some issues in compiling a [Metropolis Theme](https://github.com/matze/mtheme) beamer presentation on my mac.

So, let's use the universal "works on my machine" engine
to compile it for fun and profit.

## Usage

1. Create the docker image

    make docker_image

2. Use docker to compile your presentation

    docker run -v `pwd`:/data -i beamer:latest xelatex ...




