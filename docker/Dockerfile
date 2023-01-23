FROM nvidia/cuda:11.3.1-base-ubuntu20.04

ENV PYTHON_VERSION=3.9

# RUN apt-get update && apt-get install -y \
#     build-essential \
#     gcc \
#     git \
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get -qq update \
    && apt-get -qq install --no-install-recommends \
    git \
    python${PYTHON_VERSION} \
    python${PYTHON_VERSION}-venv \
    python3-pip \
    ffmpeg \
    #libmagic1 \
    #python3-yaml \
    #libvulkan-dev \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s -f /usr/bin/python${PYTHON_VERSION} /usr/bin/python3 && \
    ln -s -f /usr/bin/python${PYTHON_VERSION} /usr/bin/python && \
    ln -s -f /usr/bin/pip3 /usr/bin/pip

RUN pip install --upgrade pip

RUN git clone https://github.com/yoyo-nb/Thin-Plate-Spline-Motion-Model.git /TPSM

RUN pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113

WORKDIR /TPSM

RUN pip install cffi==1.14.6 cycler==0.10.0 decorator==5.1.0 face-alignment==1.3.5 imageio==2.9.0 imageio-ffmpeg==0.4.5 kiwisolver==1.3.2 matplotlib==3.4.3 networkx==2.6.3 numpy==1.20.3 pandas==1.3.3 Pillow==8.3.2 pycparser==2.20 pyparsing==2.4.7 python-dateutil==2.8.2 pytz==2021.1 PyWavelets==1.1.1 PyYAML==5.4.1 scikit-image==0.18.3 scikit-learn==1.0 scipy==1.7.1 six==1.16.0 tqdm==4.62.3
#RUN pip install dlib