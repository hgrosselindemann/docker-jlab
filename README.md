# docker-jlab
Docker container for a Jupyter Lab environment for climate data analysis. Mostly focused on xarray and according packages. Contains cdo, nco and ncview as command line tools. For full package list, see requirement files.

To pull:

    sudo docker pull hgrosselindemann/docker-jlab:main

To run:
change the path to the directory you want to work in
you need to have X11 installed in your local system in order to use Ncview

    sudo docker run --network=host -v /home/hgrosselindemann/Documents/:/work -w /work -e DISPLAY=$DISPLAY --user $(id -u):0 --group-add users hgrosselindemann/docker-jlab:main

on Windows using Docker Desktop:
- pull the image
- run image with with following optional settings
  - Ports: 
    - set Host port to 8888
  - Volumes: 
    - Code Directory: choose Host path then set Container path to /home/jovyan/work
    - Data Directory: choose Host path then set Container path to /home/jovyan/data
  - Environment variables:
    - Variable to workdir then Value to /work
- open the link that looks like this: ht<span>tp://127<span>.0.0.1:8888/lab?token=

ncview is not working on windows because of display forwarding issues between the linux subsystem and the windows display. I didn't bother trying to solve that, sorry.
