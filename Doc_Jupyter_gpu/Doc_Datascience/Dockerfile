FROM jupyter/datascience-notebook

RUN mkdir -p /home/jovyan/share_dir
RUN mkdir -p /home/jovyan/git

RUN jupyter notebook --generate-config
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN conda install pytorch-cpu torchvision -c pytorch
RUN pip install jupyterthemes
RUN jt -t chesterish -T -f roboto -fs 9 -tf merriserif -tfs 11 -nf ptsans -nfs 11 -dfs 8 -ofs 8
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding /home/jovyan/.local/share/jupyter/nbextensions/vim_binding
COPY notebook.json /home/jovyan/.jupyter/nbconfig/
COPY edit.json /home/jovyan/.jupyter/nbconfig
COPY custom.css /home/jovyan/.jupyter/custom/
COPY custom.js /home/jovyan/.jupyter/custom/
