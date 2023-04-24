# docker-jlab
To run:
'sudo docker run --network=host -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/hgrosselindemann/Documents/:/work -w /work -e DISPLAY=$DISPLAY --user $(id -u):0 --group-add users hgrosselindemann/docker-jlab:main'
