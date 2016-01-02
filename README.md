# React tutorial on Docker
This is a test project to try the React tutorial on Docker.
By using this, you can make the docker container which allows you to make a trial of React.
To lean more about React tutorial, please read the React Tutorial below.

http://facebook.github.io/react/docs/tutorial.html


## Necessary softwares
+ Docker
+ Docker Machine (Mac OS X)
+ Web Browser


## Clone this repository
```
mkdir react_tutorial
cd react_tutorial
git clone https://github.com/bravewood/react-tutorial-docker .
```

## Build image
```
docker build -t bravewood/react .
```


## Run the container
```
bash run_docker.sh
```


## Use the sample application
open the url
```
http://<your docker machine ip>:3000/
```


## Show active containers
```
docker ps
```


## Stop the container
```
docker stop my-react
```


## Delete the container image
```
docker rm my-react
```


## Login to the container shell
```
docker exec -i -t my-react /bin/bash
```



## How to edit the codes of the tutorial
After you execute the run_docker.sh command, your local codes will be mounted on the docker container and served by node server.
That means, you will be able to edit the codes of tutorial and then the changes will be reflected on your browser immediately.
Let's try to edit the codes located in ``lib/react-tutorial-master/public`` directory.
