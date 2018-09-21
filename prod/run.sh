
### if you had run dev eniroment, please make sure the continer is close
# docker-compose rm 

# step 1: build image
docker-compose build


# step 2: copy django project to web folder
cp -r ../dev/backend/manage.py web
cp -r ../dev/backend/core web

## if you do not have django project, please reference developer mode build django project, then copy to prod/web


# step final:  docker-compose up images
docker-compose up -d 


# open browser
# backend http://host_ip:8080

# stop container
docker-compose down

