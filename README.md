# docker-jlab
To pull:

    sudo docker pull hgrosselindemann/docker-jlab:main

To run:
change the path to the directory you want to work in
you need to have X11 installed in your local system in order to use Ncview

    sudo docker run --network=host -v /home/hgrosselindemann/Documents/:/work -w /work -e DISPLAY=$DISPLAY --user $(id -u):0 --group-add users hgrosselindemann/docker-jlab:main
