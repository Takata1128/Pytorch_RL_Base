FROM nvidia/cuda:11.1-devel-ubuntu20.04

# See http://bugs.python.org/issue19846
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    curl \
    python3 \
    python3-pip

RUN python3 -m pip --no-cache-dir install --upgrade \
    "pip<20.3" \
    setuptools

# # Some TF tools expect a "python" binary
# RUN ln -s $(which python3) /usr/local/bin/python

ENV DEBIAN_FRONTEND=noninteractive
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH
RUN apt-get update && apt-get install -y \
    build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
    libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git ffmpeg
RUN curl https://pyenv.run | bash && \
    echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

# X window ----------------
RUN apt-get update && apt-get install -y \
    xvfb x11vnc python-opengl icewm

# DL ----------------
RUN echo 'alias jl="DISPLAY=:0 jupyter lab --ip 0.0.0.0 --port 8888 --allow-root &"' >> ~/.bashrc && \
    echo 'alias tb="tensorboard --logdir runs --bind_all &"' >> ~/.bashrc

RUN . ~/.bashrc && \
    pyenv install 3.8.0 && \
    pyenv global 3.8.0 && \
    pyenv rehash && \
    pip install -U pip && \
    pip install gym && \
    pip install tensorflow && \
    pip install pip install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio===0.9.1 -f https://download.pytorch.org/whl/torch_stable.html

# utils ----------------
RUN apt-get update && apt-get install -y \
    vim

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root
CMD ["bash"]