FROM jupyter/datascience-notebook

WORKDIR /opt

ENV PATH /opt/anaconda3/bin:$PATH

RUN pip install selenium

WORKDIR /work

# CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]