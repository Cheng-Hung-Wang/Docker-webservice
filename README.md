# Docker-webservice

##### Build developer enviroment django + postgresql + react

```
### Install docker tools
# bash install.sh
```

```
### For ubuntu 18.04 developer enviroment

# cd dev

### build django project
# docker-compose build
# docker-compose run backend django-admin.py startproject core ./backend

### change folder permission
# cd backend && sudo chown -R $USER:$USER .

### change django db connection see dev/run.sh content
# vim backend/core/settings.py

### bild react app
# docker-compose run frontend npx create-react-app app

### change folder permission
# cd frontend && sudo chown -R $USER:$USER .

### modify your package.json
# vim frontend/app/package.json

### final up docker
# docker-compose up -d db
# docker-compose up -d backend frontend

### open browser
### backend http://host_ip:8000
### frontend http://host_ip:3000

### stop container
docker-compose down

```


```
### For ubuntu 18.04 production enviroment

# cd prod

### if you had run dev eniroment, please make sure the continer is close
## docker-compose rm 

### build image
# docker-compose build

### copy developer enviroment project to prod/web
# cp -r ../dev/backend/manage.py web
# cp -r ../dev/backend/core web


### docker-compose up images
# docker-compose up -d
 
### open browser
### backend http://host_ip:8080


### stop container
# docker-compose down


```
