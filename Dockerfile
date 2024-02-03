FROM quay.io/jupyter/all-spark-notebook:latest

# port exposure
EXPOSE 8888
# update packages
RUN sudo apt-get update && sudo apt-get upgrade
# container run command variables
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--user=root"]
