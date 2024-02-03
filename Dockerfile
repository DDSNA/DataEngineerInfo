6# Utilizarea imaginii de bază
FROM quay.io/jupyter/all-spark-notebook:latest

# Exponarea portului
EXPOSE 8888

# Comanda pentru a rula containerul
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
CMD jupyter lab
