# init a base image (Alpine is small Linux distro)
FROM frolvlad/alpine-python-machinelearning:latest
# define the present working directory
WORKDIR /docker-flask-test
# copy the contents into the working dir
ADD . /docker-flask-test
# run pip to install the dependencies of the flask app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 4000
# define the command to start the container
CMD ["python","app.py"]