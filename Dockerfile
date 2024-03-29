FROM quay.io/jupyter/all-spark-notebook:latest

# port exposure
EXPOSE 8888

# container run command variables
RUN apt-get update && apt-get install

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--user=root"]
