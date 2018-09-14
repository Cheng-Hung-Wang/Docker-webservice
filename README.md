# Docker-webservice

##### Build developer enviroment django + postgresql + react

```For ubuntu 18.04

# bash install.sh
# cd dev

### build django project
# docker-compose run backend django-admin.py startproject core ./backend

### change folder permission
# cd backend && sudo chown -R $USER:$USER .

### change django db connection see dev/run.sh content
# vim backend/core/settings.py

# bild react app
#docker-compose run frontend npx create-react-app app

### change folder permission
# cd frontend && sudo chown -R $USER:$USER .

### modify your package.json
#vim frontend/app/package.json

### final up docker
#docker-compose up -d db
#docker-compose up -d backend frontend
```



