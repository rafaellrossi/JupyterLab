FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

WORKDIR /app

# RUN pip3 install jupyterlab
RUN python3 -m pip install notebook

EXPOSE 8080

# CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token='1234'"]
CMD python3 -m notebook --allow-root
