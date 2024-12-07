docker stop jetson-j4tcamera
docker rm jetson-j4tcamera
docker run -it \
    --name=jetson-j4tcamera \
    --network=host \
    -v /home/$USER/Development/Volumes/noetic-pytorch/volume:/home/volume/ \
    --runtime nvidia \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --privileged \
    --restart unless-stopped \
    solarswarm/j4tcamera:latest
#    --device-cgroup-rule "c 81:* rmw" \
#    --device-cgroup-rule "c 189:* rmw" \
