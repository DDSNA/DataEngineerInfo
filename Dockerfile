FROM quay.io/jupyter/all-spark-notebook:latest

# port exposure
EXPOSE 8888
# update packages
RUN apt-get update && apt-get clean && apt-get upgrade -y || true
# container run command variables
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--user=root"]
