FROM tensorflow/tensorflow:latest-devel-py3 
RUN apt-get update
RUN mkdir -p /root/share_dir
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
#pytorch 
RUN pip3 install http://download.pytorch.org/whl/cpu/torch-0.3.1-cp35-cp35m-linux_x86_64.whl
RUN pip3 install torchvision

RUN pip install jupyterthemes
RUN jt -t chesterish -T -f roboto -fs 9 -tf merriserif -tfs 11 -nf ptsans -nfs 11 -dfs 8 -ofs 8
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding /usr/local/share/jupyter/nbextensions/vim_binding
COPY notebook.json /root/.jupyter/nbconfig/
COPY edit.json /root/.jupyter/nbconfig
#RUN mkdir -p /home/.jupyter/custom
COPY custom.css /root/.jupyter/custom/
COPY custom.js /root/.jupyter/custom/
RUN pip3 install gym
RUN pip3 install git+https://github.com/jakevdp/JSAnimation.git
RUN apt-get install -y xvfb
COPY jupyter.sh /root/
