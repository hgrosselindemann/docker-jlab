# docker-jlab
Docker container for a Jupyter Lab environment for climate data analysis. Mostly focused on xarray and according packages. Contains cdo, nco and ncview as command line tools. For full package list, see requirement files.

To pull:

    sudo docker pull hgrosselindemann/docker-jlab:main

To run:
change the path to the directory you want to work in
you need to have X11 installed in your local system in order to use Ncview (for linux, I dont know how display forwarding works on windows)

    sudo docker run --network=host -v /home/hgrosselindemann/Documents/:/work -w /work -e DISPLAY=$DISPLAY --user $(id -u):0 --group-add users hgrosselindemann/docker-jlab:main
