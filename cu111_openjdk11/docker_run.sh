docker run --gpus all -it --shm-size=16gb -v $(pwd):/root/mnt -p 8888:8888 -p 5900:5900 -p 6006:6006 --name gpn rokah/pytorch_rl_base:cu111-jdk11