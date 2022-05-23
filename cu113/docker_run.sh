#/bin/bash
docker run --gpus all -it --shm-size=16gb -v $(pwd):/root/mnt --name dl-workspace rokahikou/pytorch_dl_base:cu113