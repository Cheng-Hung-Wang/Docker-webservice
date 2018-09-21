
# step 1 build image
docker-compose build

# step 2~3 build backend service
# step 2: use docker-compose build django project
docker-compose run backend django-admin.py startproject core ./

# step 3: change permission
sudo chown -R $USER:$USER .

# step 4: change django db connection
vim backend/core/settings.py

: <<BLOCK
# modify django ALLOWED_HOSTS
ALLOWED_HOSTS = ['*']

# modify db connection information
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'password123',
        'HOST': 'db',
        'PORT': 5432,
    }
}
BLOCK

# step 5~8 build frontend app (react)
# step 5: user docker-compose build react app frontend(project name)
docker-compose run frontend npx create-react-app frontend

# step 6: change permission
sudo chown -R $USER:$USER .

# step 7: movie content
mv frontend/frontend/* frontend/ && rm -r frontend/frontend

# step 8: modify your package.json
vim frontend/app/package.json

# step final:  docker-compose up images
docker-compose up -d db
docker-compose up -d backend frontend


# open browser
# backend http://host_ip:8000
# frontend http://host_ip:3000

# stop container
docker-compose down
