FROM ubuntu

# create working directory and install pip dependencies
WORKDIR /app
COPY . /app
RUN apt update && apt install -y python3 python3-pip
RUN pip install -r requirements.txt

# copy python project files from local to /hello-py image working directory

# run the flask server
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
